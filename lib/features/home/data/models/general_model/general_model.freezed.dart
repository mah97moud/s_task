// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeneralModel _$GeneralModelFromJson(Map<String, dynamic> json) {
  return _GeneralModel.fromJson(json);
}

/// @nodoc
mixin _$GeneralModel {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneralModelCopyWith<GeneralModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralModelCopyWith<$Res> {
  factory $GeneralModelCopyWith(
          GeneralModel value, $Res Function(GeneralModel) then) =
      _$GeneralModelCopyWithImpl<$Res, GeneralModel>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$GeneralModelCopyWithImpl<$Res, $Val extends GeneralModel>
    implements $GeneralModelCopyWith<$Res> {
  _$GeneralModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeneralModelImplCopyWith<$Res>
    implements $GeneralModelCopyWith<$Res> {
  factory _$$GeneralModelImplCopyWith(
          _$GeneralModelImpl value, $Res Function(_$GeneralModelImpl) then) =
      __$$GeneralModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$GeneralModelImplCopyWithImpl<$Res>
    extends _$GeneralModelCopyWithImpl<$Res, _$GeneralModelImpl>
    implements _$$GeneralModelImplCopyWith<$Res> {
  __$$GeneralModelImplCopyWithImpl(
      _$GeneralModelImpl _value, $Res Function(_$GeneralModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$GeneralModelImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeneralModelImpl implements _GeneralModel {
  _$GeneralModelImpl({this.message = ''});

  factory _$GeneralModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeneralModelImplFromJson(json);

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'GeneralModel(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneralModelImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneralModelImplCopyWith<_$GeneralModelImpl> get copyWith =>
      __$$GeneralModelImplCopyWithImpl<_$GeneralModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeneralModelImplToJson(
      this,
    );
  }
}

abstract class _GeneralModel implements GeneralModel {
  factory _GeneralModel({final String message}) = _$GeneralModelImpl;

  factory _GeneralModel.fromJson(Map<String, dynamic> json) =
      _$GeneralModelImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$GeneralModelImplCopyWith<_$GeneralModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
