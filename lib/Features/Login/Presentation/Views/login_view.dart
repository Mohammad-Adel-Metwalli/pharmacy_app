import 'package:flutter/material.dart';
import 'package:pharmacy_app/Features/Login/Presentation/Views/Widgets/login_view_body.dart';
import '../../../../Core/Utils/constant_colors.dart';

class LoginView extends StatefulWidget
{
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView>
{
  @override
  Widget build(BuildContext context)
  {
    return const Scaffold(
        backgroundColor: ConstantColors.babyBlue,
        body: LoginViewBody(),
    );
  }
}