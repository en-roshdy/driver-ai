// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OrderDetailsModel _$OrderDetailsModelFromJson(Map<String, dynamic> json) {
  return _OrderDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$OrderDetailsModel {
  OrderModel get order => throw _privateConstructorUsedError;
  List<OrderItemModel> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_name')
  String? get clientName => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_phone')
  String? get clientPhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_image')
  String? get clientImage => throw _privateConstructorUsedError;

  /// Serializes this OrderDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderDetailsModelCopyWith<OrderDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailsModelCopyWith<$Res> {
  factory $OrderDetailsModelCopyWith(
    OrderDetailsModel value,
    $Res Function(OrderDetailsModel) then,
  ) = _$OrderDetailsModelCopyWithImpl<$Res, OrderDetailsModel>;
  @useResult
  $Res call({
    OrderModel order,
    List<OrderItemModel> items,
    @JsonKey(name: 'client_name') String? clientName,
    @JsonKey(name: 'client_phone') String? clientPhone,
    @JsonKey(name: 'client_image') String? clientImage,
  });

  $OrderModelCopyWith<$Res> get order;
}

/// @nodoc
class _$OrderDetailsModelCopyWithImpl<$Res, $Val extends OrderDetailsModel>
    implements $OrderDetailsModelCopyWith<$Res> {
  _$OrderDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? items = null,
    Object? clientName = freezed,
    Object? clientPhone = freezed,
    Object? clientImage = freezed,
  }) {
    return _then(
      _value.copyWith(
            order: null == order
                ? _value.order
                : order // ignore: cast_nullable_to_non_nullable
                      as OrderModel,
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<OrderItemModel>,
            clientName: freezed == clientName
                ? _value.clientName
                : clientName // ignore: cast_nullable_to_non_nullable
                      as String?,
            clientPhone: freezed == clientPhone
                ? _value.clientPhone
                : clientPhone // ignore: cast_nullable_to_non_nullable
                      as String?,
            clientImage: freezed == clientImage
                ? _value.clientImage
                : clientImage // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of OrderDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderModelCopyWith<$Res> get order {
    return $OrderModelCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderDetailsModelImplCopyWith<$Res>
    implements $OrderDetailsModelCopyWith<$Res> {
  factory _$$OrderDetailsModelImplCopyWith(
    _$OrderDetailsModelImpl value,
    $Res Function(_$OrderDetailsModelImpl) then,
  ) = __$$OrderDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    OrderModel order,
    List<OrderItemModel> items,
    @JsonKey(name: 'client_name') String? clientName,
    @JsonKey(name: 'client_phone') String? clientPhone,
    @JsonKey(name: 'client_image') String? clientImage,
  });

  @override
  $OrderModelCopyWith<$Res> get order;
}

/// @nodoc
class __$$OrderDetailsModelImplCopyWithImpl<$Res>
    extends _$OrderDetailsModelCopyWithImpl<$Res, _$OrderDetailsModelImpl>
    implements _$$OrderDetailsModelImplCopyWith<$Res> {
  __$$OrderDetailsModelImplCopyWithImpl(
    _$OrderDetailsModelImpl _value,
    $Res Function(_$OrderDetailsModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? items = null,
    Object? clientName = freezed,
    Object? clientPhone = freezed,
    Object? clientImage = freezed,
  }) {
    return _then(
      _$OrderDetailsModelImpl(
        order: null == order
            ? _value.order
            : order // ignore: cast_nullable_to_non_nullable
                  as OrderModel,
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<OrderItemModel>,
        clientName: freezed == clientName
            ? _value.clientName
            : clientName // ignore: cast_nullable_to_non_nullable
                  as String?,
        clientPhone: freezed == clientPhone
            ? _value.clientPhone
            : clientPhone // ignore: cast_nullable_to_non_nullable
                  as String?,
        clientImage: freezed == clientImage
            ? _value.clientImage
            : clientImage // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDetailsModelImpl extends _OrderDetailsModel {
  const _$OrderDetailsModelImpl({
    required this.order,
    required final List<OrderItemModel> items,
    @JsonKey(name: 'client_name') this.clientName,
    @JsonKey(name: 'client_phone') this.clientPhone,
    @JsonKey(name: 'client_image') this.clientImage,
  }) : _items = items,
       super._();

  factory _$OrderDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDetailsModelImplFromJson(json);

  @override
  final OrderModel order;
  final List<OrderItemModel> _items;
  @override
  List<OrderItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'client_name')
  final String? clientName;
  @override
  @JsonKey(name: 'client_phone')
  final String? clientPhone;
  @override
  @JsonKey(name: 'client_image')
  final String? clientImage;

  @override
  String toString() {
    return 'OrderDetailsModel(order: $order, items: $items, clientName: $clientName, clientPhone: $clientPhone, clientImage: $clientImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDetailsModelImpl &&
            (identical(other.order, order) || other.order == order) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.clientName, clientName) ||
                other.clientName == clientName) &&
            (identical(other.clientPhone, clientPhone) ||
                other.clientPhone == clientPhone) &&
            (identical(other.clientImage, clientImage) ||
                other.clientImage == clientImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    order,
    const DeepCollectionEquality().hash(_items),
    clientName,
    clientPhone,
    clientImage,
  );

  /// Create a copy of OrderDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDetailsModelImplCopyWith<_$OrderDetailsModelImpl> get copyWith =>
      __$$OrderDetailsModelImplCopyWithImpl<_$OrderDetailsModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDetailsModelImplToJson(this);
  }
}

abstract class _OrderDetailsModel extends OrderDetailsModel {
  const factory _OrderDetailsModel({
    required final OrderModel order,
    required final List<OrderItemModel> items,
    @JsonKey(name: 'client_name') final String? clientName,
    @JsonKey(name: 'client_phone') final String? clientPhone,
    @JsonKey(name: 'client_image') final String? clientImage,
  }) = _$OrderDetailsModelImpl;
  const _OrderDetailsModel._() : super._();

  factory _OrderDetailsModel.fromJson(Map<String, dynamic> json) =
      _$OrderDetailsModelImpl.fromJson;

  @override
  OrderModel get order;
  @override
  List<OrderItemModel> get items;
  @override
  @JsonKey(name: 'client_name')
  String? get clientName;
  @override
  @JsonKey(name: 'client_phone')
  String? get clientPhone;
  @override
  @JsonKey(name: 'client_image')
  String? get clientImage;

  /// Create a copy of OrderDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderDetailsModelImplCopyWith<_$OrderDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderItemModel _$OrderItemModelFromJson(Map<String, dynamic> json) {
  return _OrderItemModel.fromJson(json);
}

/// @nodoc
mixin _$OrderItemModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this OrderItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderItemModelCopyWith<OrderItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemModelCopyWith<$Res> {
  factory $OrderItemModelCopyWith(
    OrderItemModel value,
    $Res Function(OrderItemModel) then,
  ) = _$OrderItemModelCopyWithImpl<$Res, OrderItemModel>;
  @useResult
  $Res call({int id, String name, int quantity, double price, String? image});
}

/// @nodoc
class _$OrderItemModelCopyWithImpl<$Res, $Val extends OrderItemModel>
    implements $OrderItemModelCopyWith<$Res> {
  _$OrderItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? quantity = null,
    Object? price = null,
    Object? image = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            quantity: null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                      as int,
            price: null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as double,
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
abstract class _$$OrderItemModelImplCopyWith<$Res>
    implements $OrderItemModelCopyWith<$Res> {
  factory _$$OrderItemModelImplCopyWith(
    _$OrderItemModelImpl value,
    $Res Function(_$OrderItemModelImpl) then,
  ) = __$$OrderItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int quantity, double price, String? image});
}

/// @nodoc
class __$$OrderItemModelImplCopyWithImpl<$Res>
    extends _$OrderItemModelCopyWithImpl<$Res, _$OrderItemModelImpl>
    implements _$$OrderItemModelImplCopyWith<$Res> {
  __$$OrderItemModelImplCopyWithImpl(
    _$OrderItemModelImpl _value,
    $Res Function(_$OrderItemModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? quantity = null,
    Object? price = null,
    Object? image = freezed,
  }) {
    return _then(
      _$OrderItemModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        quantity: null == quantity
            ? _value.quantity
            : quantity // ignore: cast_nullable_to_non_nullable
                  as int,
        price: null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as double,
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
class _$OrderItemModelImpl extends _OrderItemModel {
  const _$OrderItemModelImpl({
    required this.id,
    required this.name,
    required this.quantity,
    required this.price,
    this.image,
  }) : super._();

  factory _$OrderItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int quantity;
  @override
  final double price;
  @override
  final String? image;

  @override
  String toString() {
    return 'OrderItemModel(id: $id, name: $name, quantity: $quantity, price: $price, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, quantity, price, image);

  /// Create a copy of OrderItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemModelImplCopyWith<_$OrderItemModelImpl> get copyWith =>
      __$$OrderItemModelImplCopyWithImpl<_$OrderItemModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemModelImplToJson(this);
  }
}

abstract class _OrderItemModel extends OrderItemModel {
  const factory _OrderItemModel({
    required final int id,
    required final String name,
    required final int quantity,
    required final double price,
    final String? image,
  }) = _$OrderItemModelImpl;
  const _OrderItemModel._() : super._();

  factory _OrderItemModel.fromJson(Map<String, dynamic> json) =
      _$OrderItemModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get quantity;
  @override
  double get price;
  @override
  String? get image;

  /// Create a copy of OrderItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderItemModelImplCopyWith<_$OrderItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
