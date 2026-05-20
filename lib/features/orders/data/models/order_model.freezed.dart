// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_number')
  String? get orderNumber => throw _privateConstructorUsedError;
  TotalModel? get total => throw _privateConstructorUsedError;
  StatusModel? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'to_date')
  ToDateModel? get toDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'map_address')
  String? get mapAddress => throw _privateConstructorUsedError;
  String? get lat => throw _privateConstructorUsedError;
  String? get lng => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_accept_button')
  bool? get canAcceptButton => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_confirm_button')
  bool? get canConfirmButton => throw _privateConstructorUsedError;
  CityModel? get city => throw _privateConstructorUsedError;

  /// Serializes this OrderModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
    OrderModel value,
    $Res Function(OrderModel) then,
  ) = _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call({
    int? id,
    @JsonKey(name: 'order_number') String? orderNumber,
    TotalModel? total,
    StatusModel? status,
    @JsonKey(name: 'to_date') ToDateModel? toDate,
    @JsonKey(name: 'map_address') String? mapAddress,
    String? lat,
    String? lng,
    @JsonKey(name: 'can_accept_button') bool? canAcceptButton,
    @JsonKey(name: 'can_confirm_button') bool? canConfirmButton,
    CityModel? city,
  });

  $TotalModelCopyWith<$Res>? get total;
  $StatusModelCopyWith<$Res>? get status;
  $ToDateModelCopyWith<$Res>? get toDate;
  $CityModelCopyWith<$Res>? get city;
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? orderNumber = freezed,
    Object? total = freezed,
    Object? status = freezed,
    Object? toDate = freezed,
    Object? mapAddress = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? canAcceptButton = freezed,
    Object? canConfirmButton = freezed,
    Object? city = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            orderNumber: freezed == orderNumber
                ? _value.orderNumber
                : orderNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            total: freezed == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as TotalModel?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as StatusModel?,
            toDate: freezed == toDate
                ? _value.toDate
                : toDate // ignore: cast_nullable_to_non_nullable
                      as ToDateModel?,
            mapAddress: freezed == mapAddress
                ? _value.mapAddress
                : mapAddress // ignore: cast_nullable_to_non_nullable
                      as String?,
            lat: freezed == lat
                ? _value.lat
                : lat // ignore: cast_nullable_to_non_nullable
                      as String?,
            lng: freezed == lng
                ? _value.lng
                : lng // ignore: cast_nullable_to_non_nullable
                      as String?,
            canAcceptButton: freezed == canAcceptButton
                ? _value.canAcceptButton
                : canAcceptButton // ignore: cast_nullable_to_non_nullable
                      as bool?,
            canConfirmButton: freezed == canConfirmButton
                ? _value.canConfirmButton
                : canConfirmButton // ignore: cast_nullable_to_non_nullable
                      as bool?,
            city: freezed == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                      as CityModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TotalModelCopyWith<$Res>? get total {
    if (_value.total == null) {
      return null;
    }

    return $TotalModelCopyWith<$Res>(_value.total!, (value) {
      return _then(_value.copyWith(total: value) as $Val);
    });
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusModelCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $StatusModelCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ToDateModelCopyWith<$Res>? get toDate {
    if (_value.toDate == null) {
      return null;
    }

    return $ToDateModelCopyWith<$Res>(_value.toDate!, (value) {
      return _then(_value.copyWith(toDate: value) as $Val);
    });
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityModelCopyWith<$Res>? get city {
    if (_value.city == null) {
      return null;
    }

    return $CityModelCopyWith<$Res>(_value.city!, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderModelImplCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$OrderModelImplCopyWith(
    _$OrderModelImpl value,
    $Res Function(_$OrderModelImpl) then,
  ) = __$$OrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    @JsonKey(name: 'order_number') String? orderNumber,
    TotalModel? total,
    StatusModel? status,
    @JsonKey(name: 'to_date') ToDateModel? toDate,
    @JsonKey(name: 'map_address') String? mapAddress,
    String? lat,
    String? lng,
    @JsonKey(name: 'can_accept_button') bool? canAcceptButton,
    @JsonKey(name: 'can_confirm_button') bool? canConfirmButton,
    CityModel? city,
  });

  @override
  $TotalModelCopyWith<$Res>? get total;
  @override
  $StatusModelCopyWith<$Res>? get status;
  @override
  $ToDateModelCopyWith<$Res>? get toDate;
  @override
  $CityModelCopyWith<$Res>? get city;
}

/// @nodoc
class __$$OrderModelImplCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$OrderModelImpl>
    implements _$$OrderModelImplCopyWith<$Res> {
  __$$OrderModelImplCopyWithImpl(
    _$OrderModelImpl _value,
    $Res Function(_$OrderModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? orderNumber = freezed,
    Object? total = freezed,
    Object? status = freezed,
    Object? toDate = freezed,
    Object? mapAddress = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? canAcceptButton = freezed,
    Object? canConfirmButton = freezed,
    Object? city = freezed,
  }) {
    return _then(
      _$OrderModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        orderNumber: freezed == orderNumber
            ? _value.orderNumber
            : orderNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        total: freezed == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as TotalModel?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as StatusModel?,
        toDate: freezed == toDate
            ? _value.toDate
            : toDate // ignore: cast_nullable_to_non_nullable
                  as ToDateModel?,
        mapAddress: freezed == mapAddress
            ? _value.mapAddress
            : mapAddress // ignore: cast_nullable_to_non_nullable
                  as String?,
        lat: freezed == lat
            ? _value.lat
            : lat // ignore: cast_nullable_to_non_nullable
                  as String?,
        lng: freezed == lng
            ? _value.lng
            : lng // ignore: cast_nullable_to_non_nullable
                  as String?,
        canAcceptButton: freezed == canAcceptButton
            ? _value.canAcceptButton
            : canAcceptButton // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canConfirmButton: freezed == canConfirmButton
            ? _value.canConfirmButton
            : canConfirmButton // ignore: cast_nullable_to_non_nullable
                  as bool?,
        city: freezed == city
            ? _value.city
            : city // ignore: cast_nullable_to_non_nullable
                  as CityModel?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderModelImpl extends _OrderModel {
  const _$OrderModelImpl({
    this.id,
    @JsonKey(name: 'order_number') this.orderNumber,
    this.total,
    this.status,
    @JsonKey(name: 'to_date') this.toDate,
    @JsonKey(name: 'map_address') this.mapAddress,
    this.lat,
    this.lng,
    @JsonKey(name: 'can_accept_button') this.canAcceptButton,
    @JsonKey(name: 'can_confirm_button') this.canConfirmButton,
    this.city,
  }) : super._();

  factory _$OrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'order_number')
  final String? orderNumber;
  @override
  final TotalModel? total;
  @override
  final StatusModel? status;
  @override
  @JsonKey(name: 'to_date')
  final ToDateModel? toDate;
  @override
  @JsonKey(name: 'map_address')
  final String? mapAddress;
  @override
  final String? lat;
  @override
  final String? lng;
  @override
  @JsonKey(name: 'can_accept_button')
  final bool? canAcceptButton;
  @override
  @JsonKey(name: 'can_confirm_button')
  final bool? canConfirmButton;
  @override
  final CityModel? city;

  @override
  String toString() {
    return 'OrderModel(id: $id, orderNumber: $orderNumber, total: $total, status: $status, toDate: $toDate, mapAddress: $mapAddress, lat: $lat, lng: $lng, canAcceptButton: $canAcceptButton, canConfirmButton: $canConfirmButton, city: $city)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.toDate, toDate) || other.toDate == toDate) &&
            (identical(other.mapAddress, mapAddress) ||
                other.mapAddress == mapAddress) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.canAcceptButton, canAcceptButton) ||
                other.canAcceptButton == canAcceptButton) &&
            (identical(other.canConfirmButton, canConfirmButton) ||
                other.canConfirmButton == canConfirmButton) &&
            (identical(other.city, city) || other.city == city));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    orderNumber,
    total,
    status,
    toDate,
    mapAddress,
    lat,
    lng,
    canAcceptButton,
    canConfirmButton,
    city,
  );

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      __$$OrderModelImplCopyWithImpl<_$OrderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderModelImplToJson(this);
  }
}

abstract class _OrderModel extends OrderModel {
  const factory _OrderModel({
    final int? id,
    @JsonKey(name: 'order_number') final String? orderNumber,
    final TotalModel? total,
    final StatusModel? status,
    @JsonKey(name: 'to_date') final ToDateModel? toDate,
    @JsonKey(name: 'map_address') final String? mapAddress,
    final String? lat,
    final String? lng,
    @JsonKey(name: 'can_accept_button') final bool? canAcceptButton,
    @JsonKey(name: 'can_confirm_button') final bool? canConfirmButton,
    final CityModel? city,
  }) = _$OrderModelImpl;
  const _OrderModel._() : super._();

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$OrderModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'order_number')
  String? get orderNumber;
  @override
  TotalModel? get total;
  @override
  StatusModel? get status;
  @override
  @JsonKey(name: 'to_date')
  ToDateModel? get toDate;
  @override
  @JsonKey(name: 'map_address')
  String? get mapAddress;
  @override
  String? get lat;
  @override
  String? get lng;
  @override
  @JsonKey(name: 'can_accept_button')
  bool? get canAcceptButton;
  @override
  @JsonKey(name: 'can_confirm_button')
  bool? get canConfirmButton;
  @override
  CityModel? get city;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TotalModel _$TotalModelFromJson(Map<String, dynamic> json) {
  return _TotalModel.fromJson(json);
}

/// @nodoc
mixin _$TotalModel {
  @JsonKey(name: 'full_sentence')
  String? get fullSentence => throw _privateConstructorUsedError;
  @JsonKey(name: 'label_unit')
  String? get labelUnit => throw _privateConstructorUsedError;
  double? get number => throw _privateConstructorUsedError;

  /// Serializes this TotalModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TotalModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TotalModelCopyWith<TotalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotalModelCopyWith<$Res> {
  factory $TotalModelCopyWith(
    TotalModel value,
    $Res Function(TotalModel) then,
  ) = _$TotalModelCopyWithImpl<$Res, TotalModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'full_sentence') String? fullSentence,
    @JsonKey(name: 'label_unit') String? labelUnit,
    double? number,
  });
}

/// @nodoc
class _$TotalModelCopyWithImpl<$Res, $Val extends TotalModel>
    implements $TotalModelCopyWith<$Res> {
  _$TotalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TotalModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullSentence = freezed,
    Object? labelUnit = freezed,
    Object? number = freezed,
  }) {
    return _then(
      _value.copyWith(
            fullSentence: freezed == fullSentence
                ? _value.fullSentence
                : fullSentence // ignore: cast_nullable_to_non_nullable
                      as String?,
            labelUnit: freezed == labelUnit
                ? _value.labelUnit
                : labelUnit // ignore: cast_nullable_to_non_nullable
                      as String?,
            number: freezed == number
                ? _value.number
                : number // ignore: cast_nullable_to_non_nullable
                      as double?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TotalModelImplCopyWith<$Res>
    implements $TotalModelCopyWith<$Res> {
  factory _$$TotalModelImplCopyWith(
    _$TotalModelImpl value,
    $Res Function(_$TotalModelImpl) then,
  ) = __$$TotalModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'full_sentence') String? fullSentence,
    @JsonKey(name: 'label_unit') String? labelUnit,
    double? number,
  });
}

/// @nodoc
class __$$TotalModelImplCopyWithImpl<$Res>
    extends _$TotalModelCopyWithImpl<$Res, _$TotalModelImpl>
    implements _$$TotalModelImplCopyWith<$Res> {
  __$$TotalModelImplCopyWithImpl(
    _$TotalModelImpl _value,
    $Res Function(_$TotalModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TotalModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullSentence = freezed,
    Object? labelUnit = freezed,
    Object? number = freezed,
  }) {
    return _then(
      _$TotalModelImpl(
        fullSentence: freezed == fullSentence
            ? _value.fullSentence
            : fullSentence // ignore: cast_nullable_to_non_nullable
                  as String?,
        labelUnit: freezed == labelUnit
            ? _value.labelUnit
            : labelUnit // ignore: cast_nullable_to_non_nullable
                  as String?,
        number: freezed == number
            ? _value.number
            : number // ignore: cast_nullable_to_non_nullable
                  as double?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TotalModelImpl implements _TotalModel {
  const _$TotalModelImpl({
    @JsonKey(name: 'full_sentence') this.fullSentence,
    @JsonKey(name: 'label_unit') this.labelUnit,
    this.number,
  });

  factory _$TotalModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TotalModelImplFromJson(json);

  @override
  @JsonKey(name: 'full_sentence')
  final String? fullSentence;
  @override
  @JsonKey(name: 'label_unit')
  final String? labelUnit;
  @override
  final double? number;

  @override
  String toString() {
    return 'TotalModel(fullSentence: $fullSentence, labelUnit: $labelUnit, number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TotalModelImpl &&
            (identical(other.fullSentence, fullSentence) ||
                other.fullSentence == fullSentence) &&
            (identical(other.labelUnit, labelUnit) ||
                other.labelUnit == labelUnit) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fullSentence, labelUnit, number);

  /// Create a copy of TotalModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TotalModelImplCopyWith<_$TotalModelImpl> get copyWith =>
      __$$TotalModelImplCopyWithImpl<_$TotalModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TotalModelImplToJson(this);
  }
}

abstract class _TotalModel implements TotalModel {
  const factory _TotalModel({
    @JsonKey(name: 'full_sentence') final String? fullSentence,
    @JsonKey(name: 'label_unit') final String? labelUnit,
    final double? number,
  }) = _$TotalModelImpl;

  factory _TotalModel.fromJson(Map<String, dynamic> json) =
      _$TotalModelImpl.fromJson;

  @override
  @JsonKey(name: 'full_sentence')
  String? get fullSentence;
  @override
  @JsonKey(name: 'label_unit')
  String? get labelUnit;
  @override
  double? get number;

  /// Create a copy of TotalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TotalModelImplCopyWith<_$TotalModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StatusModel _$StatusModelFromJson(Map<String, dynamic> json) {
  return _StatusModel.fromJson(json);
}

/// @nodoc
mixin _$StatusModel {
  String? get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'custom_name')
  String? get customName => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get opacity => throw _privateConstructorUsedError;

  /// Serializes this StatusModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StatusModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatusModelCopyWith<StatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusModelCopyWith<$Res> {
  factory $StatusModelCopyWith(
    StatusModel value,
    $Res Function(StatusModel) then,
  ) = _$StatusModelCopyWithImpl<$Res, StatusModel>;
  @useResult
  $Res call({
    String? color,
    @JsonKey(name: 'custom_name') String? customName,
    String? name,
    int? opacity,
  });
}

/// @nodoc
class _$StatusModelCopyWithImpl<$Res, $Val extends StatusModel>
    implements $StatusModelCopyWith<$Res> {
  _$StatusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatusModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? customName = freezed,
    Object? name = freezed,
    Object? opacity = freezed,
  }) {
    return _then(
      _value.copyWith(
            color: freezed == color
                ? _value.color
                : color // ignore: cast_nullable_to_non_nullable
                      as String?,
            customName: freezed == customName
                ? _value.customName
                : customName // ignore: cast_nullable_to_non_nullable
                      as String?,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            opacity: freezed == opacity
                ? _value.opacity
                : opacity // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StatusModelImplCopyWith<$Res>
    implements $StatusModelCopyWith<$Res> {
  factory _$$StatusModelImplCopyWith(
    _$StatusModelImpl value,
    $Res Function(_$StatusModelImpl) then,
  ) = __$$StatusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? color,
    @JsonKey(name: 'custom_name') String? customName,
    String? name,
    int? opacity,
  });
}

/// @nodoc
class __$$StatusModelImplCopyWithImpl<$Res>
    extends _$StatusModelCopyWithImpl<$Res, _$StatusModelImpl>
    implements _$$StatusModelImplCopyWith<$Res> {
  __$$StatusModelImplCopyWithImpl(
    _$StatusModelImpl _value,
    $Res Function(_$StatusModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StatusModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? customName = freezed,
    Object? name = freezed,
    Object? opacity = freezed,
  }) {
    return _then(
      _$StatusModelImpl(
        color: freezed == color
            ? _value.color
            : color // ignore: cast_nullable_to_non_nullable
                  as String?,
        customName: freezed == customName
            ? _value.customName
            : customName // ignore: cast_nullable_to_non_nullable
                  as String?,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        opacity: freezed == opacity
            ? _value.opacity
            : opacity // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StatusModelImpl implements _StatusModel {
  const _$StatusModelImpl({
    this.color,
    @JsonKey(name: 'custom_name') this.customName,
    this.name,
    this.opacity,
  });

  factory _$StatusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatusModelImplFromJson(json);

  @override
  final String? color;
  @override
  @JsonKey(name: 'custom_name')
  final String? customName;
  @override
  final String? name;
  @override
  final int? opacity;

  @override
  String toString() {
    return 'StatusModel(color: $color, customName: $customName, name: $name, opacity: $opacity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusModelImpl &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.customName, customName) ||
                other.customName == customName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.opacity, opacity) || other.opacity == opacity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, color, customName, name, opacity);

  /// Create a copy of StatusModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusModelImplCopyWith<_$StatusModelImpl> get copyWith =>
      __$$StatusModelImplCopyWithImpl<_$StatusModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatusModelImplToJson(this);
  }
}

abstract class _StatusModel implements StatusModel {
  const factory _StatusModel({
    final String? color,
    @JsonKey(name: 'custom_name') final String? customName,
    final String? name,
    final int? opacity,
  }) = _$StatusModelImpl;

  factory _StatusModel.fromJson(Map<String, dynamic> json) =
      _$StatusModelImpl.fromJson;

  @override
  String? get color;
  @override
  @JsonKey(name: 'custom_name')
  String? get customName;
  @override
  String? get name;
  @override
  int? get opacity;

  /// Create a copy of StatusModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatusModelImplCopyWith<_$StatusModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ToDateModel _$ToDateModelFromJson(Map<String, dynamic> json) {
  return _ToDateModel.fromJson(json);
}

/// @nodoc
mixin _$ToDateModel {
  String? get date => throw _privateConstructorUsedError;
  TimeModel? get time => throw _privateConstructorUsedError;

  /// Serializes this ToDateModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ToDateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ToDateModelCopyWith<ToDateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDateModelCopyWith<$Res> {
  factory $ToDateModelCopyWith(
    ToDateModel value,
    $Res Function(ToDateModel) then,
  ) = _$ToDateModelCopyWithImpl<$Res, ToDateModel>;
  @useResult
  $Res call({String? date, TimeModel? time});

  $TimeModelCopyWith<$Res>? get time;
}

/// @nodoc
class _$ToDateModelCopyWithImpl<$Res, $Val extends ToDateModel>
    implements $ToDateModelCopyWith<$Res> {
  _$ToDateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ToDateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? date = freezed, Object? time = freezed}) {
    return _then(
      _value.copyWith(
            date: freezed == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as String?,
            time: freezed == time
                ? _value.time
                : time // ignore: cast_nullable_to_non_nullable
                      as TimeModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of ToDateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimeModelCopyWith<$Res>? get time {
    if (_value.time == null) {
      return null;
    }

    return $TimeModelCopyWith<$Res>(_value.time!, (value) {
      return _then(_value.copyWith(time: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ToDateModelImplCopyWith<$Res>
    implements $ToDateModelCopyWith<$Res> {
  factory _$$ToDateModelImplCopyWith(
    _$ToDateModelImpl value,
    $Res Function(_$ToDateModelImpl) then,
  ) = __$$ToDateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? date, TimeModel? time});

  @override
  $TimeModelCopyWith<$Res>? get time;
}

/// @nodoc
class __$$ToDateModelImplCopyWithImpl<$Res>
    extends _$ToDateModelCopyWithImpl<$Res, _$ToDateModelImpl>
    implements _$$ToDateModelImplCopyWith<$Res> {
  __$$ToDateModelImplCopyWithImpl(
    _$ToDateModelImpl _value,
    $Res Function(_$ToDateModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ToDateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? date = freezed, Object? time = freezed}) {
    return _then(
      _$ToDateModelImpl(
        date: freezed == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String?,
        time: freezed == time
            ? _value.time
            : time // ignore: cast_nullable_to_non_nullable
                  as TimeModel?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ToDateModelImpl implements _ToDateModel {
  const _$ToDateModelImpl({this.date, this.time});

  factory _$ToDateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ToDateModelImplFromJson(json);

  @override
  final String? date;
  @override
  final TimeModel? time;

  @override
  String toString() {
    return 'ToDateModel(date: $date, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToDateModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, time);

  /// Create a copy of ToDateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToDateModelImplCopyWith<_$ToDateModelImpl> get copyWith =>
      __$$ToDateModelImplCopyWithImpl<_$ToDateModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ToDateModelImplToJson(this);
  }
}

abstract class _ToDateModel implements ToDateModel {
  const factory _ToDateModel({final String? date, final TimeModel? time}) =
      _$ToDateModelImpl;

  factory _ToDateModel.fromJson(Map<String, dynamic> json) =
      _$ToDateModelImpl.fromJson;

  @override
  String? get date;
  @override
  TimeModel? get time;

  /// Create a copy of ToDateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToDateModelImplCopyWith<_$ToDateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TimeModel _$TimeModelFromJson(Map<String, dynamic> json) {
  return _TimeModel.fromJson(json);
}

/// @nodoc
mixin _$TimeModel {
  String? get label => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  /// Serializes this TimeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimeModelCopyWith<TimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeModelCopyWith<$Res> {
  factory $TimeModelCopyWith(TimeModel value, $Res Function(TimeModel) then) =
      _$TimeModelCopyWithImpl<$Res, TimeModel>;
  @useResult
  $Res call({String? label, String? value});
}

/// @nodoc
class _$TimeModelCopyWithImpl<$Res, $Val extends TimeModel>
    implements $TimeModelCopyWith<$Res> {
  _$TimeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? label = freezed, Object? value = freezed}) {
    return _then(
      _value.copyWith(
            label: freezed == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                      as String?,
            value: freezed == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TimeModelImplCopyWith<$Res>
    implements $TimeModelCopyWith<$Res> {
  factory _$$TimeModelImplCopyWith(
    _$TimeModelImpl value,
    $Res Function(_$TimeModelImpl) then,
  ) = __$$TimeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? label, String? value});
}

/// @nodoc
class __$$TimeModelImplCopyWithImpl<$Res>
    extends _$TimeModelCopyWithImpl<$Res, _$TimeModelImpl>
    implements _$$TimeModelImplCopyWith<$Res> {
  __$$TimeModelImplCopyWithImpl(
    _$TimeModelImpl _value,
    $Res Function(_$TimeModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TimeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? label = freezed, Object? value = freezed}) {
    return _then(
      _$TimeModelImpl(
        label: freezed == label
            ? _value.label
            : label // ignore: cast_nullable_to_non_nullable
                  as String?,
        value: freezed == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeModelImpl implements _TimeModel {
  const _$TimeModelImpl({this.label, this.value});

  factory _$TimeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeModelImplFromJson(json);

  @override
  final String? label;
  @override
  final String? value;

  @override
  String toString() {
    return 'TimeModel(label: $label, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeModelImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, label, value);

  /// Create a copy of TimeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeModelImplCopyWith<_$TimeModelImpl> get copyWith =>
      __$$TimeModelImplCopyWithImpl<_$TimeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeModelImplToJson(this);
  }
}

abstract class _TimeModel implements TimeModel {
  const factory _TimeModel({final String? label, final String? value}) =
      _$TimeModelImpl;

  factory _TimeModel.fromJson(Map<String, dynamic> json) =
      _$TimeModelImpl.fromJson;

  @override
  String? get label;
  @override
  String? get value;

  /// Create a copy of TimeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeModelImplCopyWith<_$TimeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CityModel _$CityModelFromJson(Map<String, dynamic> json) {
  return _CityModel.fromJson(json);
}

/// @nodoc
mixin _$CityModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_id')
  int? get countryId => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this CityModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CityModelCopyWith<CityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityModelCopyWith<$Res> {
  factory $CityModelCopyWith(CityModel value, $Res Function(CityModel) then) =
      _$CityModelCopyWithImpl<$Res, CityModel>;
  @useResult
  $Res call({
    int? id,
    String? name,
    @JsonKey(name: 'country_id') int? countryId,
    String? image,
  });
}

/// @nodoc
class _$CityModelCopyWithImpl<$Res, $Val extends CityModel>
    implements $CityModelCopyWith<$Res> {
  _$CityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? countryId = freezed,
    Object? image = freezed,
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
            countryId: freezed == countryId
                ? _value.countryId
                : countryId // ignore: cast_nullable_to_non_nullable
                      as int?,
            image: freezed == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CityModelImplCopyWith<$Res>
    implements $CityModelCopyWith<$Res> {
  factory _$$CityModelImplCopyWith(
    _$CityModelImpl value,
    $Res Function(_$CityModelImpl) then,
  ) = __$$CityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    String? name,
    @JsonKey(name: 'country_id') int? countryId,
    String? image,
  });
}

/// @nodoc
class __$$CityModelImplCopyWithImpl<$Res>
    extends _$CityModelCopyWithImpl<$Res, _$CityModelImpl>
    implements _$$CityModelImplCopyWith<$Res> {
  __$$CityModelImplCopyWithImpl(
    _$CityModelImpl _value,
    $Res Function(_$CityModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? countryId = freezed,
    Object? image = freezed,
  }) {
    return _then(
      _$CityModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        countryId: freezed == countryId
            ? _value.countryId
            : countryId // ignore: cast_nullable_to_non_nullable
                  as int?,
        image: freezed == image
            ? _value.image
            : image // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CityModelImpl implements _CityModel {
  const _$CityModelImpl({
    this.id,
    this.name,
    @JsonKey(name: 'country_id') this.countryId,
    this.image,
  });

  factory _$CityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'country_id')
  final int? countryId;
  @override
  final String? image;

  @override
  String toString() {
    return 'CityModel(id: $id, name: $name, countryId: $countryId, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, countryId, image);

  /// Create a copy of CityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CityModelImplCopyWith<_$CityModelImpl> get copyWith =>
      __$$CityModelImplCopyWithImpl<_$CityModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityModelImplToJson(this);
  }
}

abstract class _CityModel implements CityModel {
  const factory _CityModel({
    final int? id,
    final String? name,
    @JsonKey(name: 'country_id') final int? countryId,
    final String? image,
  }) = _$CityModelImpl;

  factory _CityModel.fromJson(Map<String, dynamic> json) =
      _$CityModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'country_id')
  int? get countryId;
  @override
  String? get image;

  /// Create a copy of CityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CityModelImplCopyWith<_$CityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
