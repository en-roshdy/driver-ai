// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) {
  return _HomeModel.fromJson(json);
}

/// @nodoc
mixin _$HomeModel {
  @JsonKey(name: 'orders')
  List<OrderModel> get pendingOrders => throw _privateConstructorUsedError;
  List<StatisticModel> get statistics => throw _privateConstructorUsedError;

  /// Serializes this HomeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeModelCopyWith<HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelCopyWith<$Res> {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) then) =
      _$HomeModelCopyWithImpl<$Res, HomeModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'orders') List<OrderModel> pendingOrders,
    List<StatisticModel> statistics,
  });
}

/// @nodoc
class _$HomeModelCopyWithImpl<$Res, $Val extends HomeModel>
    implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pendingOrders = null, Object? statistics = null}) {
    return _then(
      _value.copyWith(
            pendingOrders: null == pendingOrders
                ? _value.pendingOrders
                : pendingOrders // ignore: cast_nullable_to_non_nullable
                      as List<OrderModel>,
            statistics: null == statistics
                ? _value.statistics
                : statistics // ignore: cast_nullable_to_non_nullable
                      as List<StatisticModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HomeModelImplCopyWith<$Res>
    implements $HomeModelCopyWith<$Res> {
  factory _$$HomeModelImplCopyWith(
    _$HomeModelImpl value,
    $Res Function(_$HomeModelImpl) then,
  ) = __$$HomeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'orders') List<OrderModel> pendingOrders,
    List<StatisticModel> statistics,
  });
}

/// @nodoc
class __$$HomeModelImplCopyWithImpl<$Res>
    extends _$HomeModelCopyWithImpl<$Res, _$HomeModelImpl>
    implements _$$HomeModelImplCopyWith<$Res> {
  __$$HomeModelImplCopyWithImpl(
    _$HomeModelImpl _value,
    $Res Function(_$HomeModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pendingOrders = null, Object? statistics = null}) {
    return _then(
      _$HomeModelImpl(
        pendingOrders: null == pendingOrders
            ? _value._pendingOrders
            : pendingOrders // ignore: cast_nullable_to_non_nullable
                  as List<OrderModel>,
        statistics: null == statistics
            ? _value._statistics
            : statistics // ignore: cast_nullable_to_non_nullable
                  as List<StatisticModel>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeModelImpl extends _HomeModel {
  const _$HomeModelImpl({
    @JsonKey(name: 'orders') required final List<OrderModel> pendingOrders,
    required final List<StatisticModel> statistics,
  }) : _pendingOrders = pendingOrders,
       _statistics = statistics,
       super._();

  factory _$HomeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeModelImplFromJson(json);

  final List<OrderModel> _pendingOrders;
  @override
  @JsonKey(name: 'orders')
  List<OrderModel> get pendingOrders {
    if (_pendingOrders is EqualUnmodifiableListView) return _pendingOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pendingOrders);
  }

  final List<StatisticModel> _statistics;
  @override
  List<StatisticModel> get statistics {
    if (_statistics is EqualUnmodifiableListView) return _statistics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statistics);
  }

  @override
  String toString() {
    return 'HomeModel(pendingOrders: $pendingOrders, statistics: $statistics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelImpl &&
            const DeepCollectionEquality().equals(
              other._pendingOrders,
              _pendingOrders,
            ) &&
            const DeepCollectionEquality().equals(
              other._statistics,
              _statistics,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_pendingOrders),
    const DeepCollectionEquality().hash(_statistics),
  );

  /// Create a copy of HomeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeModelImplCopyWith<_$HomeModelImpl> get copyWith =>
      __$$HomeModelImplCopyWithImpl<_$HomeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeModelImplToJson(this);
  }
}

abstract class _HomeModel extends HomeModel {
  const factory _HomeModel({
    @JsonKey(name: 'orders') required final List<OrderModel> pendingOrders,
    required final List<StatisticModel> statistics,
  }) = _$HomeModelImpl;
  const _HomeModel._() : super._();

  factory _HomeModel.fromJson(Map<String, dynamic> json) =
      _$HomeModelImpl.fromJson;

  @override
  @JsonKey(name: 'orders')
  List<OrderModel> get pendingOrders;
  @override
  List<StatisticModel> get statistics;

  /// Create a copy of HomeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeModelImplCopyWith<_$HomeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StatisticModel _$StatisticModelFromJson(Map<String, dynamic> json) {
  return _StatisticModel.fromJson(json);
}

/// @nodoc
mixin _$StatisticModel {
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'number')
  double get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_double')
  bool get isDouble => throw _privateConstructorUsedError;

  /// Serializes this StatisticModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StatisticModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatisticModelCopyWith<StatisticModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticModelCopyWith<$Res> {
  factory $StatisticModelCopyWith(
    StatisticModel value,
    $Res Function(StatisticModel) then,
  ) = _$StatisticModelCopyWithImpl<$Res, StatisticModel>;
  @useResult
  $Res call({
    String image,
    String name,
    @JsonKey(name: 'number') double value,
    @JsonKey(name: 'is_double') bool isDouble,
  });
}

/// @nodoc
class _$StatisticModelCopyWithImpl<$Res, $Val extends StatisticModel>
    implements $StatisticModelCopyWith<$Res> {
  _$StatisticModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatisticModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? name = null,
    Object? value = null,
    Object? isDouble = null,
  }) {
    return _then(
      _value.copyWith(
            image: null == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            value: null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                      as double,
            isDouble: null == isDouble
                ? _value.isDouble
                : isDouble // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StatisticModelImplCopyWith<$Res>
    implements $StatisticModelCopyWith<$Res> {
  factory _$$StatisticModelImplCopyWith(
    _$StatisticModelImpl value,
    $Res Function(_$StatisticModelImpl) then,
  ) = __$$StatisticModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String image,
    String name,
    @JsonKey(name: 'number') double value,
    @JsonKey(name: 'is_double') bool isDouble,
  });
}

/// @nodoc
class __$$StatisticModelImplCopyWithImpl<$Res>
    extends _$StatisticModelCopyWithImpl<$Res, _$StatisticModelImpl>
    implements _$$StatisticModelImplCopyWith<$Res> {
  __$$StatisticModelImplCopyWithImpl(
    _$StatisticModelImpl _value,
    $Res Function(_$StatisticModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StatisticModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? name = null,
    Object? value = null,
    Object? isDouble = null,
  }) {
    return _then(
      _$StatisticModelImpl(
        image: null == image
            ? _value.image
            : image // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        value: null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as double,
        isDouble: null == isDouble
            ? _value.isDouble
            : isDouble // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StatisticModelImpl extends _StatisticModel {
  const _$StatisticModelImpl({
    required this.image,
    required this.name,
    @JsonKey(name: 'number') required this.value,
    @JsonKey(name: 'is_double') this.isDouble = false,
  }) : super._();

  factory _$StatisticModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatisticModelImplFromJson(json);

  @override
  final String image;
  @override
  final String name;
  @override
  @JsonKey(name: 'number')
  final double value;
  @override
  @JsonKey(name: 'is_double')
  final bool isDouble;

  @override
  String toString() {
    return 'StatisticModel(image: $image, name: $name, value: $value, isDouble: $isDouble)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticModelImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.isDouble, isDouble) ||
                other.isDouble == isDouble));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, image, name, value, isDouble);

  /// Create a copy of StatisticModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticModelImplCopyWith<_$StatisticModelImpl> get copyWith =>
      __$$StatisticModelImplCopyWithImpl<_$StatisticModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$StatisticModelImplToJson(this);
  }
}

abstract class _StatisticModel extends StatisticModel {
  const factory _StatisticModel({
    required final String image,
    required final String name,
    @JsonKey(name: 'number') required final double value,
    @JsonKey(name: 'is_double') final bool isDouble,
  }) = _$StatisticModelImpl;
  const _StatisticModel._() : super._();

  factory _StatisticModel.fromJson(Map<String, dynamic> json) =
      _$StatisticModelImpl.fromJson;

  @override
  String get image;
  @override
  String get name;
  @override
  @JsonKey(name: 'number')
  double get value;
  @override
  @JsonKey(name: 'is_double')
  bool get isDouble;

  /// Create a copy of StatisticModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatisticModelImplCopyWith<_$StatisticModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
