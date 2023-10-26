import 'package:flutter/material.dart';
import 'package:pharmacy_app/Core/Utils/constant_colors.dart';
import 'Widgets/signup_view_body.dart';

class SignUpView extends StatefulWidget
{
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView>
{
  @override
  Widget build(BuildContext context)
  {
    return const Scaffold(
      backgroundColor: ConstantColors.babyBlue,
      body: SignUpViewBody(),
    );
  }
}