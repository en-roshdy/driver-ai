import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/driver_info.dart';

part 'driver_info_model.freezed.dart';
part 'driver_info_model.g.dart';

@freezed
class DriverInfoModel with _$DriverInfoModel {
  const factory DriverInfoModel({
    int? id,
    String? name,
    String? phone,
    String? image,
    @JsonKey(name: 'work_status') bool? workStatus,
    @JsonKey(name: 'unread_notifications_count') int? unreadNotificationsCount,
    @JsonKey(name: 'unread_messages_count') int? unreadMessagesCount,
  }) = _DriverInfoModel;

  factory DriverInfoModel.fromJson(Map<String, dynamic> json) => _$DriverInfoModelFromJson(json);

  const DriverInfoModel._();

  DriverInfo toEntity() => DriverInfo(
        id: id ?? 0,
        name: name ?? '',
        phone: phone ?? '',
        image: image,
        workStatus: workStatus ?? false,
        unreadNotificationsCount: unreadNotificationsCount ?? 0,
        unreadMessagesCount: unreadMessagesCount ?? 0,
      );
}
