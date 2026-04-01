import 'package:flutter/material.dart';
import 'package:fruit_hub_app/core/helper/on_generate_routes.dart';
import 'package:fruit_hub_app/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const FruitApp());
}

class FruitApp extends StatelessWidget {
  const FruitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: onGenerateRoutes,
      initialRoute: SplashView.routeName,
    );
  }
}
