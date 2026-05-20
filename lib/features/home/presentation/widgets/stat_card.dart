import 'package:flutter/material.dart';
import '../../domain/entities/home_data.dart';

class StatCard extends StatelessWidget {
  final Statistic statistic;

  const StatCard({super.key, required this.statistic});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (statistic.image.isNotEmpty)
              Image.network(statistic.image, height: 30, width: 30, errorBuilder: (_, __, ___) => const Icon(Icons.show_chart)),
            const SizedBox(height: 8),
            Text(
              statistic.name,
              style: TextStyle(color: Colors.grey[600], fontSize: 13),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            Text(
              statistic.isDouble ? statistic.value.toStringAsFixed(2) : statistic.value.toInt().toString(),
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
