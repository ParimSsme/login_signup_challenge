import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:login_signup_challenge/core/theme/app_theme.dart';
import 'package:login_signup_challenge/screens/auth_screen.dart';

import 'controllers/auth_controller.dart';

void main() => run();

Future run() async {

  WidgetsFlutterBinding.ensureInitialized();

  Get.put(AuthController());

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Sign up challenge',
      theme: AppTheme.lightTheme,
      home: AuthScreen(),
    );
  }
}