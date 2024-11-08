import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'bindings/initial_bindings.dart';
import 'core/services/services.dart';
import 'routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // prevent horizontal orientation
    //SystemChrome.setPreferredOrientations(
    //  [
    //    DeviceOrientation.portraitUp,
    //    DeviceOrientation.portraitDown,
    //  ],
    //);

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      transitionDuration: const Duration(milliseconds: 500),
      defaultTransition: Transition.fadeIn,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF362865)),
        useMaterial3: true,
      ),
      getPages: routes,
      initialBinding: InitialBindings(),
    );
  }
}
