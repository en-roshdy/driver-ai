// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DriverInfoModel _$DriverInfoModelFromJson(Map<String, dynamic> json) {
  return _DriverInfoModel.fromJson(json);
}

/// @nodoc
mixin _$DriverInfoModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'work_status')
  bool? get workStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'unread_notifications_count')
  int? get unreadNotificationsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'unread_messages_count')
  int? get unreadMessagesCount => throw _privateConstructorUsedError;

  /// Serializes this DriverInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DriverInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DriverInfoModelCopyWith<DriverInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverInfoModelCopyWith<$Res> {
  factory $DriverInfoModelCopyWith(
    DriverInfoModel value,
    $Res Function(DriverInfoModel) then,
  ) = _$DriverInfoModelCopyWithImpl<$Res, DriverInfoModel>;
  @useResult
  $Res call({
    int? id,
    String? name,
    String? phone,
    String? image,
    @JsonKey(name: 'work_status') bool? workStatus,
    @JsonKey(name: 'unread_notifications_count') int? unreadNotificationsCount,
    @JsonKey(name: 'unread_messages_count') int? unreadMessagesCount,
  });
}

/// @nodoc
class _$DriverInfoModelCopyWithImpl<$Res, $Val extends DriverInfoModel>
    implements $DriverInfoModelCopyWith<$Res> {
  _$DriverInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? image = freezed,
    Object? workStatus = freezed,
    Object? unreadNotificationsCount = freezed,
    Object? unreadMessagesCount = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            phone: freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String?,
            image: freezed == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                      as String?,
            workStatus: freezed == workStatus
                ? _value.workStatus
                : workStatus // ignore: cast_nullable_to_non_nullable
                      as bool?,
            unreadNotificationsCount: freezed == unreadNotificationsCount
                ? _value.unreadNotificationsCount
                : unreadNotificationsCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            unreadMessagesCount: freezed == unreadMessagesCount
                ? _value.unreadMessagesCount
                : unreadMessagesCount // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DriverInfoModelImplCopyWith<$Res>
    implements $DriverInfoModelCopyWith<$Res> {
  factory _$$DriverInfoModelImplCopyWith(
    _$DriverInfoModelImpl value,
    $Res Function(_$DriverInfoModelImpl) then,
  ) = __$$DriverInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    String? name,
    String? phone,
    String? image,
    @JsonKey(name: 'work_status') bool? workStatus,
    @JsonKey(name: 'unread_notifications_count') int? unreadNotificationsCount,
    @JsonKey(name: 'unread_messages_count') int? unreadMessagesCount,
  });
}

/// @nodoc
class __$$DriverInfoModelImplCopyWithImpl<$Res>
    extends _$DriverInfoModelCopyWithImpl<$Res, _$DriverInfoModelImpl>
    implements _$$DriverInfoModelImplCopyWith<$Res> {
  __$$DriverInfoModelImplCopyWithImpl(
    _$DriverInfoModelImpl _value,
    $Res Function(_$DriverInfoModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? image = freezed,
    Object? workStatus = freezed,
    Object? unreadNotificationsCount = freezed,
    Object? unreadMessagesCount = freezed,
  }) {
    return _then(
      _$DriverInfoModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String?,
        image: freezed == image
            ? _value.image
            : image // ignore: cast_nullable_to_non_nullable
                  as String?,
        workStatus: freezed == workStatus
            ? _value.workStatus
            : workStatus // ignore: cast_nullable_to_non_nullable
                  as bool?,
        unreadNotificationsCount: freezed == unreadNotificationsCount
            ? _value.unreadNotificationsCount
            : unreadNotificationsCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        unreadMessagesCount: freezed == unreadMessagesCount
            ? _value.unreadMessagesCount
            : unreadMessagesCount // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverInfoModelImpl extends _DriverInfoModel {
  const _$DriverInfoModelImpl({
    this.id,
    this.name,
    this.phone,
    this.image,
    @JsonKey(name: 'work_status') this.workStatus,
    @JsonKey(name: 'unread_notifications_count') this.unreadNotificationsCount,
    @JsonKey(name: 'unread_messages_count') this.unreadMessagesCount,
  }) : super._();

  factory _$DriverInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverInfoModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? phone;
  @override
  final String? image;
  @override
  @JsonKey(name: 'work_status')
  final bool? workStatus;
  @override
  @JsonKey(name: 'unread_notifications_count')
  final int? unreadNotificationsCount;
  @override
  @JsonKey(name: 'unread_messages_count')
  final int? unreadMessagesCount;

  @override
  String toString() {
    return 'DriverInfoModel(id: $id, name: $name, phone: $phone, image: $image, workStatus: $workStatus, unreadNotificationsCount: $unreadNotificationsCount, unreadMessagesCount: $unreadMessagesCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverInfoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.workStatus, workStatus) ||
                other.workStatus == workStatus) &&
            (identical(
                  other.unreadNotificationsCount,
                  unreadNotificationsCount,
                ) ||
                other.unreadNotificationsCount == unreadNotificationsCount) &&
            (identical(other.unreadMessagesCount, unreadMessagesCount) ||
                other.unreadMessagesCount == unreadMessagesCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    phone,
    image,
    workStatus,
    unreadNotificationsCount,
    unreadMessagesCount,
  );

  /// Create a copy of DriverInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverInfoModelImplCopyWith<_$DriverInfoModelImpl> get copyWith =>
      __$$DriverInfoModelImplCopyWithImpl<_$DriverInfoModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverInfoModelImplToJson(this);
  }
}

abstract class _DriverInfoModel extends DriverInfoModel {
  const factory _DriverInfoModel({
    final int? id,
    final String? name,
    final String? phone,
    final String? image,
    @JsonKey(name: 'work_status') final bool? workStatus,
    @JsonKey(name: 'unread_notifications_count')
    final int? unreadNotificationsCount,
    @JsonKey(name: 'unread_messages_count') final int? unreadMessagesCount,
  }) = _$DriverInfoModelImpl;
  const _DriverInfoModel._() : super._();

  factory _DriverInfoModel.fromJson(Map<String, dynamic> json) =
      _$DriverInfoModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get image;
  @override
  @JsonKey(name: 'work_status')
  bool? get workStatus;
  @override
  @JsonKey(name: 'unread_notifications_count')
  int? get unreadNotificationsCount;
  @override
  @JsonKey(name: 'unread_messages_count')
  int? get unreadMessagesCount;

  /// Create a copy of DriverInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverInfoModelImplCopyWith<_$DriverInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
