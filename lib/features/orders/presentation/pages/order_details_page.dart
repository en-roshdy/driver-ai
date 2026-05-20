import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../bloc/order_bloc.dart';
import '../bloc/order_event.dart';
import '../bloc/order_state.dart';

class OrderDetailsPage extends StatefulWidget {
  final int orderId;
  const OrderDetailsPage({super.key, required this.orderId});

  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  @override
  void initState() {
    super.initState();
    context.read<OrderBloc>().add(GetOrderDetails(widget.orderId));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Order Details')),
      body: BlocBuilder<OrderBloc, OrderState>(
        builder: (context, state) {
          if (state is OrderLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is OrderDetailsLoaded) {
            final details = state.orderDetails;
            final order = details.order;
            return ListView(
              padding: const EdgeInsets.all(16),
              children: [
                if (order.lat != null && order.lng != null)
                  SizedBox(
                    height: 200,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: GoogleMap(
                        initialCameraPosition: CameraPosition(
                          target: LatLng(order.lat!, order.lng!),
                          zoom: 15,
                        ),
                        markers: {
                          Marker(
                            markerId: const MarkerId('order_loc'),
                            position: LatLng(order.lat!, order.lng!),
                          ),
                        },
                      ),
                    ),
                  ),
                const SizedBox(height: 16),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Order Number: ${order.orderNumber}',
                            style: const TextStyle(fontWeight: FontWeight.bold)),
                        Text('Status: ${order.statusCustomName}'),
                        Text('Total: ${order.totalFullSentence}'),
                        Text('Address: ${order.mapAddress ?? 'N/A'}'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text('Items', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ...details.items.map((item) => ListTile(
                      title: Text(item.name),
                      subtitle: Text('Quantity: ${item.quantity}'),
                      trailing: Text('${item.price}'),
                    )),
                const SizedBox(height: 20),
                if (order.canAccept)
                  ElevatedButton(
                    onPressed: () {
                      context.read<OrderBloc>().add(AcceptOrderEvent(order.id));
                    },
                    child: const Text('Accept Order'),
                  ),
                if (order.canConfirm)
                  ElevatedButton(
                    onPressed: () {
                      context.read<OrderBloc>().add(ConfirmOrderEvent(order.id));
                    },
                    child: const Text('Confirm Delivery'),
                  ),
              ],
            );
          } else if (state is OrderError) {
            return Center(child: Text(state.message));
          }
          return const SizedBox();
        },
      ),
    );
  }
}
