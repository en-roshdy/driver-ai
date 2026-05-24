import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/widgets/error_view.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../../l10n/app_localizations.dart';
import '../bloc/order_bloc.dart';
import '../bloc/order_event.dart';
import '../bloc/order_state.dart';
import '../widgets/order_card.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  void initState() {
    super.initState();
    _loadOrders();
  }

  void _loadOrders() {
    context.read<OrderBloc>().add(const GetOrders());
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.orders)),
      body: BlocBuilder<OrderBloc, OrderState>(
        builder: (context, state) {
          if (state is OrderLoading) {
            return const LoadingWidget();
          } else if (state is OrderLoaded) {
            if (state.orders.isEmpty) {
              return Center(child: Text(l10n.no_pending_orders));
            }
            return RefreshIndicator(
              onRefresh: () async => _loadOrders(),
              child: ListView.builder(
                itemCount: state.orders.length,
                itemBuilder: (context, index) {
                  return OrderCard(order: state.orders[index]);
                },
              ),
            );
          } else if (state is OrderError) {
            return ErrorView(
              message: state.message,
              onRetry: _loadOrders,
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
