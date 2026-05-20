import 'package:equatable/equatable.dart';

class DriverInfo extends Equatable {
  final int id;
  final String name;
  final String phone;
  final String? image;
  final bool workStatus;
  final int unreadNotificationsCount;
  final int unreadMessagesCount;

  const DriverInfo({
    required this.id,
    required this.name,
    required this.phone,
    this.image,
    required this.workStatus,
    required this.unreadNotificationsCount,
    required this.unreadMessagesCount,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        phone,
        image,
        workStatus,
        unreadNotificationsCount,
        unreadMessagesCount,
      ];
}
