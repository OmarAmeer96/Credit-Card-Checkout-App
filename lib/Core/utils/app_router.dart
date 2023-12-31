import 'package:credit_card_checkout_app/Features/checkout/presentation/views/my_cart_view.dart';
import 'package:credit_card_checkout_app/Features/checkout/presentation/views/payment_details_view.dart';
import 'package:credit_card_checkout_app/Features/checkout/presentation/views/thank_you_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kPaymentDetailsView = '/PaymentDetailsView';
  static const kThankYouView = '/ThankYouView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const MyCartView(),
      ),
      GoRoute(
        path: kPaymentDetailsView,
        builder: (context, state) => const PaymentDetailsView(),
      ),
      GoRoute(
        path: kThankYouView,
        builder: (context, state) => const ThankYouView(),
      ),
    ],
  );
}
