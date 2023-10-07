import 'package:bookly/Features/Home/presentation/screens/home_screen.dart';
import 'package:go_router/go_router.dart';

import '../../Features/splash/presentation/screens/splash_view.dart';

abstract class AppRouter {
  static const splashScreen = '/';
  static const homeScreen = '/homeScreen';
  static final router = GoRouter(routes: [
    GoRoute(
      path: splashScreen,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: homeScreen,
      builder: (context, state) => const HomeScreen(),
    ),
  ]);
}
