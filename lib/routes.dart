import 'package:get/get.dart';

import 'core/constant/app_routes.dart';
import 'screens/auth/login_screen.dart';
import 'screens/auth/register_screen.dart';
import 'screens/splash_screen.dart';

List<GetPage<dynamic>> routes = [
  GetPage(
    name: AppRoutes.splashScreen,
    page: () => const SplashScreen(),
    // page: () => const TestScreen(),
    // binding: Binding(),
  ),
  GetPage(
    name: AppRoutes.loginScreen,
    page: () => const LoginScreen(),
  ),
  GetPage(
    name: AppRoutes.registerScreen,
    page: () => const RegisterScreen(),
  ),
];
