import 'package:flutter/material.dart';
import 'package:pharmacy_app/Core/Utils/constant_colors.dart';
import 'package:pharmacy_app/Features/Presentation/Views/Widgets/splash_view_body.dart';

class SplashView extends StatelessWidget
{
  const SplashView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return const Scaffold(
      backgroundColor: ConstantColors.babyBlue,
      body: SplashViewBody(),
    );
  }
}