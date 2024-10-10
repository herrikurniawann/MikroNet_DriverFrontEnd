import 'package:flutter/material.dart';
import 'package:ridehailing/auth/login_screen.dart';
import 'package:ridehailing/auth/register_screen.dart';
import 'package:ridehailing/main_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DriverMikroNet',
      theme: ThemeData(
          fontFamily: "InriaSerif",
          visualDensity: VisualDensity.adaptivePlatformDensity),
      initialRoute: LoginScreen.idScreen,
      routes: {
        RegisterScreen.idScreen: (context) => const RegisterScreen(),
        LoginScreen.idScreen: (context) => const LoginScreen(),
        MainScreen.idScreen: (context) => const MainScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}