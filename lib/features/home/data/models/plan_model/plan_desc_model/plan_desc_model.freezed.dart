// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan_desc_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlanDescModel _$PlanDescModelFromJson(Map<String, dynamic> json) {
  return _PlanDescModel.fromJson(json);
}

/// @nodoc
mixin _$PlanDescModel {
  String? get desc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlanDescModelCopyWith<PlanDescModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanDescModelCopyWith<$Res> {
  factory $PlanDescModelCopyWith(
          PlanDescModel value, $Res Function(PlanDescModel) then) =
      _$PlanDescModelCopyWithImpl<$Res, PlanDescModel>;
  @useResult
  $Res call({String? desc});
}

/// @nodoc
class _$PlanDescModelCopyWithImpl<$Res, $Val extends PlanDescModel>
    implements $PlanDescModelCopyWith<$Res> {
  _$PlanDescModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? desc = freezed,
  }) {
    return _then(_value.copyWith(
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlanDescModelImplCopyWith<$Res>
    implements $PlanDescModelCopyWith<$Res> {
  factory _$$PlanDescModelImplCopyWith(
          _$PlanDescModelImpl value, $Res Function(_$PlanDescModelImpl) then) =
      __$$PlanDescModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? desc});
}

/// @nodoc
class __$$PlanDescModelImplCopyWithImpl<$Res>
    extends _$PlanDescModelCopyWithImpl<$Res, _$PlanDescModelImpl>
    implements _$$PlanDescModelImplCopyWith<$Res> {
  __$$PlanDescModelImplCopyWithImpl(
      _$PlanDescModelImpl _value, $Res Function(_$PlanDescModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? desc = freezed,
  }) {
    return _then(_$PlanDescModelImpl(
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlanDescModelImpl implements _PlanDescModel {
  _$PlanDescModelImpl({this.desc});

  factory _$PlanDescModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlanDescModelImplFromJson(json);

  @override
  final String? desc;

  @override
  String toString() {
    return 'PlanDescModel(desc: $desc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanDescModelImpl &&
            (identical(other.desc, desc) || other.desc == desc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, desc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlanDescModelImplCopyWith<_$PlanDescModelImpl> get copyWith =>
      __$$PlanDescModelImplCopyWithImpl<_$PlanDescModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlanDescModelImplToJson(
      this,
    );
  }
}

abstract class _PlanDescModel implements PlanDescModel {
  factory _PlanDescModel({final String? desc}) = _$PlanDescModelImpl;

  factory _PlanDescModel.fromJson(Map<String, dynamic> json) =
      _$PlanDescModelImpl.fromJson;

  @override
  String? get desc;
  @override
  @JsonKey(ignore: true)
  _$$PlanDescModelImplCopyWith<_$PlanDescModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
