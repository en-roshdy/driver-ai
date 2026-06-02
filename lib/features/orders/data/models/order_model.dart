import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/order.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
  const factory OrderModel({
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
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) => _$OrderModelFromJson(json);

  const OrderModel._();

  Order toEntity() => Order(
        id: id ?? 0,
        orderNumber: orderNumber ?? '',
        totalFullSentence: total?.fullSentence,
        statusName: status?.name,
        statusCustomName: status?.customName,
        statusColor: status?.color,
        date: toDate?.date,
        time: toDate?.time?.value,
        mapAddress: mapAddress,
        lat: double.tryParse(lat ?? ''),
        lng: double.tryParse(lng ?? ''),
        canAccept: canAcceptButton ?? false,
        canConfirm: canConfirmButton ?? false,
        cityName: city?.name,
      );
}

@freezed
class TotalModel with _$TotalModel {
  const factory TotalModel({
    @JsonKey(name: 'full_sentence') String? fullSentence,
    @JsonKey(name: 'label_unit') String? labelUnit,
    double? number,
  }) = _TotalModel;

  factory TotalModel.fromJson(Map<String, dynamic> json) => _$TotalModelFromJson(json);
}

@freezed
class StatusModel with _$StatusModel {
  const factory StatusModel({
    String? color,
    @JsonKey(name: 'custom_name') String? customName,
    String? name,
    int? opacity,
  }) = _StatusModel;

  factory StatusModel.fromJson(Map<String, dynamic> json) => _$StatusModelFromJson(json);
}

@freezed
class ToDateModel with _$ToDateModel {
  const factory ToDateModel({
    String? date,
    TimeModel? time,
  }) = _ToDateModel;

  factory ToDateModel.fromJson(Map<String, dynamic> json) => _$ToDateModelFromJson(json);
}

@freezed
class TimeModel with _$TimeModel {
  const factory TimeModel({
    String? label,
    String? value,
  }) = _TimeModel;

  factory TimeModel.fromJson(Map<String, dynamic> json) => _$TimeModelFromJson(json);
}

@freezed
class CityModel with _$CityModel {
  const factory CityModel({
    int? id,
    String? name,
    @JsonKey(name: 'country_id') int? countryId,
    String? image,
  }) = _CityModel;

  factory CityModel.fromJson(Map<String, dynamic> json) => _$CityModelFromJson(json);
}
