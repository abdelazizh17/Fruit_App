import 'package:flutter/material.dart';
import 'package:fruit_hub_app/features/auth/presentation/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const routeName = 'loginView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginViewBody(),
    );
  }
}