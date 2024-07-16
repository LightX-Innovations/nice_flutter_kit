import "dart:async";

import "package:async/async.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:nice_flutter_kit/nice_flutter_kit.dart";
import "package:synchronized/synchronized.dart" as sync;
import "package:uuid/uuid.dart";

abstract class NiceBaseCubit<S extends NiceBaseState> extends Cubit<S> {
  NiceBaseCubit(S initialState) : super(initialState);

  final Map<String, CancelableOperation> cancelableOperations = {};
  final _lock = sync.Lock();

  dynamic get dynamicState => state as dynamic;

  FutureOr<R?> wrap<R>({
    bool loading = true,
    required FutureOr<R> Function() callback,
    FutureOr<R?> Function(Object e)? onError,
    FutureOr<R?> Function()? onCancel,
    bool isCancelable = true,
    bool useLock = false,
  }) async {
    if (isClosed) {
      return null;
    }

    if (!isCancelable) {
      if (!useLock) {
        return _wrap(
          loading: loading,
          callback: callback,
          onError: onError,
        );
      }
      return _lock.synchronized(
        () => _wrap(
          loading: loading,
          callback: callback,
          onError: onError,
        ),
      );
    }
    final operationId = const Uuid().v4();
    final operation = CancelableOperation.fromFuture(
      () async {
        if (!useLock) {
          return _wrap(
            loading: loading,
            callback: callback,
            onError: onError,
          );
        }
        return _lock.synchronized(
          () => _wrap(
            loading: loading,
            callback: callback,
            onError: onError,
          ),
        );
      }()
          .whenComplete(
        () => cancelableOperations.remove(operationId),
      ),
      onCancel: onCancel,
    );
    cancelableOperations[operationId] = operation;
    return operation.value;
  }

  @override
  Future<void> close() async {
    await Future.wait(
      cancelableOperations.values.map((e) => e.cancel()),
    );
    await super.close();
  }

  FutureOr<R?> _wrap<R>({
    bool loading = true,
    required FutureOr<R> Function() callback,
    FutureOr<R?> Function(Object e)? onError,
  }) async {
    try {
      if (loading) {
        // ignore: avoid_dynamic_calls
        emit(dynamicState.copyWith(loading: true));
      }
      final result = await callback();
      if (loading) {
        // ignore: avoid_dynamic_calls
        emit(dynamicState.copyWith(loading: false));
      }
      return result;
    } catch (e, s) {
      await NiceConfig.baseCubitConfig?.wrapErrorHandler(e, s);
      emit(
        // ignore: avoid_dynamic_calls
        dynamicState.copyWith(
          loading: loading ? false : state.loading,
          error: true,
        ),
      );
      return await onError?.call(e);
    }
  }
}
