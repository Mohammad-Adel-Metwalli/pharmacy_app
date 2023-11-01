import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pharmacy_app/Features/Presentation/Views/Widgets/splash_view_body_items.dart';

class SplashViewBody extends StatefulWidget
{
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
{
  @override
  void initState()
  {
    super.initState();

    navigateToHome();
  }

  void navigateToHome()
  {
    Future.delayed(const Duration(seconds: 5), ()
    {
      GoRouter.of(context).replace('/homeView');
    });
  }

  @override
  Widget build(BuildContext context)
  {
    return const SplashViewBodyItems();
  }
}