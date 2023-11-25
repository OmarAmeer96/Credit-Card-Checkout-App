import 'package:credit_card_checkout_app/Features/checkout/presentation/views/my_cart_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kLoginView = '/LoginView';
  static const kHomeView = '/homeView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const MyCartView(),
      ),
    ],
  );
}
