import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/repositories/order_repository.dart';
import 'order_event.dart';
import 'order_state.dart';

@injectable
class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final OrderRepository orderRepository;

  OrderBloc(this.orderRepository) : super(OrderInitial()) {
    on<GetOrders>((event, emit) async {
      emit(OrderLoading());
      final result = await orderRepository.getOrders(event.page);
      result.fold(
        (failure) => emit(OrderError(failure.message)),
        (orders) => emit(OrderLoaded(orders)),
      );
    });

    on<GetOrderDetails>((event, emit) async {
      emit(OrderLoading());
      final result = await orderRepository.getOrderDetails(event.orderId);
      result.fold(
        (failure) => emit(OrderError(failure.message)),
        (orderDetails) => emit(OrderDetailsLoaded(orderDetails)),
      );
    });

    on<AcceptOrderEvent>((event, emit) async {
      emit(OrderLoading());
      final result = await orderRepository.acceptOrder(event.orderId);
      result.fold(
        (failure) => emit(OrderError(failure.message)),
        (_) => emit(OrderActionSuccess()),
      );
    });

    on<ConfirmOrderEvent>((event, emit) async {
      emit(OrderLoading());
      final result = await orderRepository.confirmOrder(event.orderId);
      result.fold(
        (failure) => emit(OrderError(failure.message)),
        (_) => emit(OrderActionSuccess()),
      );
    });
  }
}
