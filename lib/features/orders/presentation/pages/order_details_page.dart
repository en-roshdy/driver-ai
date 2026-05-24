import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_values.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../l10n/app_localizations.dart';
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
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.order_details)),
      body: BlocBuilder<OrderBloc, OrderState>(
        builder: (context, state) {
          if (state is OrderLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is OrderDetailsLoaded) {
            final details = state.orderDetails;
            final order = details.order;
            return ListView(
              padding: const EdgeInsets.all(AppPadding.p16),
              children: [
                if (order.lat != null && order.lng != null)
                  SizedBox(
                    height: AppSize.s200,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(AppRadius.r12),
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
                const SizedBox(height: AppSize.s16),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(AppPadding.p16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${l10n.order_number}: ${order.orderNumber}',
                            style: AppTextStyles.bold16),
                        Text('${l10n.status}: ${order.statusCustomName}'),
                        Text('${l10n.total}: ${order.totalFullSentence}'),
                        Text('${l10n.address}: ${order.mapAddress ?? 'N/A'}'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: AppSize.s20),
                Text(l10n.items, style: AppTextStyles.bold18),
                ...details.items.map((item) => ListTile(
                      title: Text(item.name),
                      subtitle: Text('${l10n.quantity}: ${item.quantity}'),
                      trailing: Text('${item.price}'),
                    )),
                const SizedBox(height: AppSize.s20),
                if (order.canAccept)
                  ElevatedButton(
                    onPressed: () {
                      context.read<OrderBloc>().add(AcceptOrderEvent(order.id));
                    },
                    child: Text(l10n.accept_order),
                  ),
                if (order.canConfirm)
                  ElevatedButton(
                    onPressed: () {
                      context.read<OrderBloc>().add(ConfirmOrderEvent(order.id));
                    },
                    child: Text(l10n.confirm_delivery),
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
