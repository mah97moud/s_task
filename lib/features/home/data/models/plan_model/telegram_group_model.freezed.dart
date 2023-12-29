// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'telegram_group_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TelegramGroupModel _$TelegramGroupModelFromJson(Map<String, dynamic> json) {
  return _TelegramGroup.fromJson(json);
}

/// @nodoc
mixin _$TelegramGroupModel {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get merchant => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TelegramGroupModelCopyWith<TelegramGroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TelegramGroupModelCopyWith<$Res> {
  factory $TelegramGroupModelCopyWith(
          TelegramGroupModel value, $Res Function(TelegramGroupModel) then) =
      _$TelegramGroupModelCopyWithImpl<$Res, TelegramGroupModel>;
  @useResult
  $Res call({int? id, String? title, String? merchant, String? token});
}

/// @nodoc
class _$TelegramGroupModelCopyWithImpl<$Res, $Val extends TelegramGroupModel>
    implements $TelegramGroupModelCopyWith<$Res> {
  _$TelegramGroupModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? merchant = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      merchant: freezed == merchant
          ? _value.merchant
          : merchant // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TelegramGroupImplCopyWith<$Res>
    implements $TelegramGroupModelCopyWith<$Res> {
  factory _$$TelegramGroupImplCopyWith(
          _$TelegramGroupImpl value, $Res Function(_$TelegramGroupImpl) then) =
      __$$TelegramGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? title, String? merchant, String? token});
}

/// @nodoc
class __$$TelegramGroupImplCopyWithImpl<$Res>
    extends _$TelegramGroupModelCopyWithImpl<$Res, _$TelegramGroupImpl>
    implements _$$TelegramGroupImplCopyWith<$Res> {
  __$$TelegramGroupImplCopyWithImpl(
      _$TelegramGroupImpl _value, $Res Function(_$TelegramGroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? merchant = freezed,
    Object? token = freezed,
  }) {
    return _then(_$TelegramGroupImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      merchant: freezed == merchant
          ? _value.merchant
          : merchant // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TelegramGroupImpl implements _TelegramGroup {
  _$TelegramGroupImpl({this.id, this.title, this.merchant, this.token});

  factory _$TelegramGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$TelegramGroupImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? merchant;
  @override
  final String? token;

  @override
  String toString() {
    return 'TelegramGroupModel(id: $id, title: $title, merchant: $merchant, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TelegramGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.merchant, merchant) ||
                other.merchant == merchant) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, merchant, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TelegramGroupImplCopyWith<_$TelegramGroupImpl> get copyWith =>
      __$$TelegramGroupImplCopyWithImpl<_$TelegramGroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TelegramGroupImplToJson(
      this,
    );
  }
}

abstract class _TelegramGroup implements TelegramGroupModel {
  factory _TelegramGroup(
      {final int? id,
      final String? title,
      final String? merchant,
      final String? token}) = _$TelegramGroupImpl;

  factory _TelegramGroup.fromJson(Map<String, dynamic> json) =
      _$TelegramGroupImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get merchant;
  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$TelegramGroupImplCopyWith<_$TelegramGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
