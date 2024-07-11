// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter-result-page.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NiceFilterResultPageModel _$NiceFilterResultPageModelFromJson(
    Map<String, dynamic> json) {
  return _NiceFilterResultPageModel.fromJson(json);
}

/// @nodoc
mixin _$NiceFilterResultPageModel {
  int get number => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NiceFilterResultPageModelCopyWith<NiceFilterResultPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NiceFilterResultPageModelCopyWith<$Res> {
  factory $NiceFilterResultPageModelCopyWith(NiceFilterResultPageModel value,
          $Res Function(NiceFilterResultPageModel) then) =
      _$NiceFilterResultPageModelCopyWithImpl<$Res, NiceFilterResultPageModel>;
  @useResult
  $Res call({int number, int size});
}

/// @nodoc
class _$NiceFilterResultPageModelCopyWithImpl<$Res,
        $Val extends NiceFilterResultPageModel>
    implements $NiceFilterResultPageModelCopyWith<$Res> {
  _$NiceFilterResultPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? size = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NiceFilterResultPageModelImplCopyWith<$Res>
    implements $NiceFilterResultPageModelCopyWith<$Res> {
  factory _$$NiceFilterResultPageModelImplCopyWith(
          _$NiceFilterResultPageModelImpl value,
          $Res Function(_$NiceFilterResultPageModelImpl) then) =
      __$$NiceFilterResultPageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int number, int size});
}

/// @nodoc
class __$$NiceFilterResultPageModelImplCopyWithImpl<$Res>
    extends _$NiceFilterResultPageModelCopyWithImpl<$Res,
        _$NiceFilterResultPageModelImpl>
    implements _$$NiceFilterResultPageModelImplCopyWith<$Res> {
  __$$NiceFilterResultPageModelImplCopyWithImpl(
      _$NiceFilterResultPageModelImpl _value,
      $Res Function(_$NiceFilterResultPageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? size = null,
  }) {
    return _then(_$NiceFilterResultPageModelImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NiceFilterResultPageModelImpl extends _NiceFilterResultPageModel {
  const _$NiceFilterResultPageModelImpl(
      {required this.number, required this.size})
      : super._();

  factory _$NiceFilterResultPageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NiceFilterResultPageModelImplFromJson(json);

  @override
  final int number;
  @override
  final int size;

  @override
  String toString() {
    return 'NiceFilterResultPageModel(number: $number, size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NiceFilterResultPageModelImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NiceFilterResultPageModelImplCopyWith<_$NiceFilterResultPageModelImpl>
      get copyWith => __$$NiceFilterResultPageModelImplCopyWithImpl<
          _$NiceFilterResultPageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NiceFilterResultPageModelImplToJson(
      this,
    );
  }
}

abstract class _NiceFilterResultPageModel extends NiceFilterResultPageModel {
  const factory _NiceFilterResultPageModel(
      {required final int number,
      required final int size}) = _$NiceFilterResultPageModelImpl;
  const _NiceFilterResultPageModel._() : super._();

  factory _NiceFilterResultPageModel.fromJson(Map<String, dynamic> json) =
      _$NiceFilterResultPageModelImpl.fromJson;

  @override
  int get number;
  @override
  int get size;
  @override
  @JsonKey(ignore: true)
  _$$NiceFilterResultPageModelImplCopyWith<_$NiceFilterResultPageModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
