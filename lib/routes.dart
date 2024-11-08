import 'package:get/get.dart';
import 'core/constant/app_routes.dart';
import 'screens/splash_screen.dart';
import 'screens/test_screen.dart';

List<GetPage<dynamic>> routes = [
  GetPage(
    name: AppRoutes.splashScreen,
    // page: () => const SplashScreen(),
    page: () => const TestScreen(),
    // binding: Binding(),
  ),
];
