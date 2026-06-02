import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../orders/data/models/order_model.dart';
import '../../domain/entities/home_data.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
class HomeModel with _$HomeModel {
  const factory HomeModel({
    @JsonKey(name: 'orders') required List<OrderModel> pendingOrders,
    required List<StatisticModel> statistics,
  }) = _HomeModel;

  factory HomeModel.fromJson(Map<String, dynamic> json) => _$HomeModelFromJson(json);

  const HomeModel._();

  HomeData toEntity() => HomeData(
        pendingOrders: pendingOrders.map((e) => e.toEntity()).toList(),
        statistics: statistics.map((e) => e.toEntity()).toList(),
      );
}

@freezed
class StatisticModel with _$StatisticModel {
  const factory StatisticModel({
    required String image,
    required String name,
    @JsonKey(name: 'number') required double value,
    @Default(false) @JsonKey(name: 'is_double') bool isDouble,
  }) = _StatisticModel;

  factory StatisticModel.fromJson(Map<String, dynamic> json) => _$StatisticModelFromJson(json);

  const StatisticModel._();

  Statistic toEntity() => Statistic(
        image: image,
        name: name,
        value: value,
        isDouble: isDouble,
      );
}
