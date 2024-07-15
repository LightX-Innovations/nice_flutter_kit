import "package:nice_flutter_kit/nice_flutter_kit.dart";

abstract class NiceBaseState implements FreezedClass {
  final bool loading;
  final bool error;

  const NiceBaseState({
    required this.loading,
    required this.error,
  });
}
