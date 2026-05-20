import 'package:go_router/go_router.dart';
import '../../features/authentication/presentation/pages/login_page.dart';
import '../../features/splash/presentation/pages/splash_page.dart';
import '../../features/main/presentation/pages/main_page.dart';
import '../../features/orders/presentation/pages/order_details_page.dart';
import '../../features/chats/presentation/pages/chat_details_page.dart';

class AppRouter {
  static const splash = '/';
  static const login = '/login';
  static const main = '/main';
  static const orderDetails = '/order-details/:id';
  static const chatDetails = '/chat-details/:id';

  static final router = GoRouter(
    initialLocation: splash,
    routes: [
      GoRoute(
        path: splash,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: login,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: main,
        builder: (context, state) => const MainPage(),
      ),
      GoRoute(
        path: orderDetails,
        builder: (context, state) {
          final id = int.parse(state.pathParameters['id']!);
          return OrderDetailsPage(orderId: id);
        },
      ),
      GoRoute(
        path: chatDetails,
        builder: (context, state) {
          final id = int.parse(state.pathParameters['id']!);
          final title = state.uri.queryParameters['title'] ?? 'Chat';
          return ChatDetailsPage(chatId: id, title: title);
        },
      ),
    ],
  );
}
