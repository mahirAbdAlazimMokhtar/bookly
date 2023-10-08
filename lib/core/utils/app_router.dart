import 'package:bookly/Features/Home/presentation/screens/book_details_View.dart';
import 'package:bookly/Features/Home/presentation/screens/home_screen.dart';
import 'package:go_router/go_router.dart';

import '../../Features/Search/presentation/screens/search_screen.dart';
import '../../Features/splash/presentation/screens/splash_view.dart';

abstract class AppRouter {
  static const splashScreen = '/';
  static const homeScreen = '/homeScreen';
  static const searchScreen = '/searchScreen';
  static const bookDetailsScreen = '/detailsScreen';

  static final router = GoRouter(routes: [
    GoRoute(
      path: splashScreen,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: homeScreen,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: bookDetailsScreen,
      builder: (context, state) => const BookDetailView(),
    ),
    GoRoute(
      path: searchScreen,
      builder: (context, state) => const SearchScreen(),
    ),
  ]);
}
