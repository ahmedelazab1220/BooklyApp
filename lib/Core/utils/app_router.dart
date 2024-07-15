import 'package:booklyapp/Features/auth/presentation/view/login_screen.dart';
import 'package:booklyapp/Features/test_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kTestScreen = '/test';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: kTestScreen,
        builder: (context, state) => const TestScreen(),
      ),
    ],
  );
}
