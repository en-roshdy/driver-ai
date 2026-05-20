import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../domain/entities/order.dart';

class OrderCard extends StatelessWidget {
  final Order order;

  const OrderCard({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        title: Text(
          'Order: ${order.orderNumber}',
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Text('Total: ${order.totalFullSentence ?? 'N/A'}'),
            const SizedBox(height: 4),
            Row(
              children: [
                Icon(Icons.location_on_outlined, size: 16, color: Colors.grey[600]),
                const SizedBox(width: 4),
                Expanded(
                  child: Text(
                    order.cityName ?? 'Unknown City',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ),
              ],
            ),
          ],
        ),
        trailing: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: _getStatusColor(order.statusColor).withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            order.statusCustomName ?? 'New',
            style: TextStyle(
              color: _getStatusColor(order.statusColor),
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ),
        onTap: () {
          context.push('/order-details/${order.id}');
        },
      ),
    );
  }

  Color _getStatusColor(String? colorStr) {
    if (colorStr == null || colorStr.isEmpty) return Colors.blue;
    try {
      return Color(int.parse(colorStr.replaceFirst('#', '0xff')));
    } catch (_) {
      return Colors.blue;
    }
  }
}
