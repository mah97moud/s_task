// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlanDataModel _$PlanDataModelFromJson(Map<String, dynamic> json) {
  return _PlanDataModel.fromJson(json);
}

/// @nodoc
mixin _$PlanDataModel {
  int get id => throw _privateConstructorUsedError;
  String get nameChannel => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  num get discount => throw _privateConstructorUsedError;
  num get price => throw _privateConstructorUsedError;
  String get percentage1 => throw _privateConstructorUsedError;
  dynamic get percentage2 => throw _privateConstructorUsedError;
  dynamic get percentage3 => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_bot')
  dynamic get numberBot => throw _privateConstructorUsedError;
  @JsonKey(name: 'plan_desc')
  List<PlanDescModel>? get planDesc => throw _privateConstructorUsedError;
  @JsonKey(name: 'telegram_groups')
  List<TelegramGroupModel>? get telegramGroups =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlanDataModelCopyWith<PlanDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanDataModelCopyWith<$Res> {
  factory $PlanDataModelCopyWith(
          PlanDataModel value, $Res Function(PlanDataModel) then) =
      _$PlanDataModelCopyWithImpl<$Res, PlanDataModel>;
  @useResult
  $Res call(
      {int id,
      String nameChannel,
      String name,
      num discount,
      num price,
      String percentage1,
      dynamic percentage2,
      dynamic percentage3,
      @JsonKey(name: 'number_bot') dynamic numberBot,
      @JsonKey(name: 'plan_desc') List<PlanDescModel>? planDesc,
      @JsonKey(name: 'telegram_groups')
      List<TelegramGroupModel>? telegramGroups});
}

/// @nodoc
class _$PlanDataModelCopyWithImpl<$Res, $Val extends PlanDataModel>
    implements $PlanDataModelCopyWith<$Res> {
  _$PlanDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nameChannel = null,
    Object? name = null,
    Object? discount = null,
    Object? price = null,
    Object? percentage1 = null,
    Object? percentage2 = freezed,
    Object? percentage3 = freezed,
    Object? numberBot = freezed,
    Object? planDesc = freezed,
    Object? telegramGroups = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nameChannel: null == nameChannel
          ? _value.nameChannel
          : nameChannel // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      percentage1: null == percentage1
          ? _value.percentage1
          : percentage1 // ignore: cast_nullable_to_non_nullable
              as String,
      percentage2: freezed == percentage2
          ? _value.percentage2
          : percentage2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      percentage3: freezed == percentage3
          ? _value.percentage3
          : percentage3 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      numberBot: freezed == numberBot
          ? _value.numberBot
          : numberBot // ignore: cast_nullable_to_non_nullable
              as dynamic,
      planDesc: freezed == planDesc
          ? _value.planDesc
          : planDesc // ignore: cast_nullable_to_non_nullable
              as List<PlanDescModel>?,
      telegramGroups: freezed == telegramGroups
          ? _value.telegramGroups
          : telegramGroups // ignore: cast_nullable_to_non_nullable
              as List<TelegramGroupModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlanDataModelImplCopyWith<$Res>
    implements $PlanDataModelCopyWith<$Res> {
  factory _$$PlanDataModelImplCopyWith(
          _$PlanDataModelImpl value, $Res Function(_$PlanDataModelImpl) then) =
      __$$PlanDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String nameChannel,
      String name,
      num discount,
      num price,
      String percentage1,
      dynamic percentage2,
      dynamic percentage3,
      @JsonKey(name: 'number_bot') dynamic numberBot,
      @JsonKey(name: 'plan_desc') List<PlanDescModel>? planDesc,
      @JsonKey(name: 'telegram_groups')
      List<TelegramGroupModel>? telegramGroups});
}

/// @nodoc
class __$$PlanDataModelImplCopyWithImpl<$Res>
    extends _$PlanDataModelCopyWithImpl<$Res, _$PlanDataModelImpl>
    implements _$$PlanDataModelImplCopyWith<$Res> {
  __$$PlanDataModelImplCopyWithImpl(
      _$PlanDataModelImpl _value, $Res Function(_$PlanDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nameChannel = null,
    Object? name = null,
    Object? discount = null,
    Object? price = null,
    Object? percentage1 = null,
    Object? percentage2 = freezed,
    Object? percentage3 = freezed,
    Object? numberBot = freezed,
    Object? planDesc = freezed,
    Object? telegramGroups = freezed,
  }) {
    return _then(_$PlanDataModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nameChannel: null == nameChannel
          ? _value.nameChannel
          : nameChannel // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      percentage1: null == percentage1
          ? _value.percentage1
          : percentage1 // ignore: cast_nullable_to_non_nullable
              as String,
      percentage2: freezed == percentage2
          ? _value.percentage2
          : percentage2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      percentage3: freezed == percentage3
          ? _value.percentage3
          : percentage3 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      numberBot: freezed == numberBot
          ? _value.numberBot
          : numberBot // ignore: cast_nullable_to_non_nullable
              as dynamic,
      planDesc: freezed == planDesc
          ? _value._planDesc
          : planDesc // ignore: cast_nullable_to_non_nullable
              as List<PlanDescModel>?,
      telegramGroups: freezed == telegramGroups
          ? _value._telegramGroups
          : telegramGroups // ignore: cast_nullable_to_non_nullable
              as List<TelegramGroupModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlanDataModelImpl implements _PlanDataModel {
  _$PlanDataModelImpl(
      {this.id = 0,
      this.nameChannel = '',
      this.name = '',
      this.discount = 0,
      this.price = 0,
      this.percentage1 = '',
      this.percentage2,
      this.percentage3,
      @JsonKey(name: 'number_bot') this.numberBot,
      @JsonKey(name: 'plan_desc') final List<PlanDescModel>? planDesc,
      @JsonKey(name: 'telegram_groups')
      final List<TelegramGroupModel>? telegramGroups})
      : _planDesc = planDesc,
        _telegramGroups = telegramGroups;

  factory _$PlanDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlanDataModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String nameChannel;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final num discount;
  @override
  @JsonKey()
  final num price;
  @override
  @JsonKey()
  final String percentage1;
  @override
  final dynamic percentage2;
  @override
  final dynamic percentage3;
  @override
  @JsonKey(name: 'number_bot')
  final dynamic numberBot;
  final List<PlanDescModel>? _planDesc;
  @override
  @JsonKey(name: 'plan_desc')
  List<PlanDescModel>? get planDesc {
    final value = _planDesc;
    if (value == null) return null;
    if (_planDesc is EqualUnmodifiableListView) return _planDesc;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TelegramGroupModel>? _telegramGroups;
  @override
  @JsonKey(name: 'telegram_groups')
  List<TelegramGroupModel>? get telegramGroups {
    final value = _telegramGroups;
    if (value == null) return null;
    if (_telegramGroups is EqualUnmodifiableListView) return _telegramGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PlanDataModel(id: $id, nameChannel: $nameChannel, name: $name, discount: $discount, price: $price, percentage1: $percentage1, percentage2: $percentage2, percentage3: $percentage3, numberBot: $numberBot, planDesc: $planDesc, telegramGroups: $telegramGroups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nameChannel, nameChannel) ||
                other.nameChannel == nameChannel) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.percentage1, percentage1) ||
                other.percentage1 == percentage1) &&
            const DeepCollectionEquality()
                .equals(other.percentage2, percentage2) &&
            const DeepCollectionEquality()
                .equals(other.percentage3, percentage3) &&
            const DeepCollectionEquality().equals(other.numberBot, numberBot) &&
            const DeepCollectionEquality().equals(other._planDesc, _planDesc) &&
            const DeepCollectionEquality()
                .equals(other._telegramGroups, _telegramGroups));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      nameChannel,
      name,
      discount,
      price,
      percentage1,
      const DeepCollectionEquality().hash(percentage2),
      const DeepCollectionEquality().hash(percentage3),
      const DeepCollectionEquality().hash(numberBot),
      const DeepCollectionEquality().hash(_planDesc),
      const DeepCollectionEquality().hash(_telegramGroups));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlanDataModelImplCopyWith<_$PlanDataModelImpl> get copyWith =>
      __$$PlanDataModelImplCopyWithImpl<_$PlanDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlanDataModelImplToJson(
      this,
    );
  }
}

abstract class _PlanDataModel implements PlanDataModel {
  factory _PlanDataModel(
      {final int id,
      final String nameChannel,
      final String name,
      final num discount,
      final num price,
      final String percentage1,
      final dynamic percentage2,
      final dynamic percentage3,
      @JsonKey(name: 'number_bot') final dynamic numberBot,
      @JsonKey(name: 'plan_desc') final List<PlanDescModel>? planDesc,
      @JsonKey(name: 'telegram_groups')
      final List<TelegramGroupModel>? telegramGroups}) = _$PlanDataModelImpl;

  factory _PlanDataModel.fromJson(Map<String, dynamic> json) =
      _$PlanDataModelImpl.fromJson;

  @override
  int get id;
  @override
  String get nameChannel;
  @override
  String get name;
  @override
  num get discount;
  @override
  num get price;
  @override
  String get percentage1;
  @override
  dynamic get percentage2;
  @override
  dynamic get percentage3;
  @override
  @JsonKey(name: 'number_bot')
  dynamic get numberBot;
  @override
  @JsonKey(name: 'plan_desc')
  List<PlanDescModel>? get planDesc;
  @override
  @JsonKey(name: 'telegram_groups')
  List<TelegramGroupModel>? get telegramGroups;
  @override
  @JsonKey(ignore: true)
  _$$PlanDataModelImplCopyWith<_$PlanDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
