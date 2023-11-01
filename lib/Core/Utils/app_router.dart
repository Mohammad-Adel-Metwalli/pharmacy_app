import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pharmacy_app/Features/Home/Presentation/Views/home_view.dart';
import 'package:pharmacy_app/Features/Presentation/Views/splash_view.dart';
import 'package:pharmacy_app/Features/Signup/Presentation/Views/signup_view.dart';
import '../../Features/Login/Presentation/Views/login_view.dart';

abstract class AppRouter
{
  static final router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          pageBuilder: (context, state)
          {
            return CustomTransitionPage(
                child: const LoginView(),
                transitionsBuilder: (context, animation, secondaryAnimation, child)
                {
                  return FadeTransition(opacity: animation, child: child);
                }
            );
          }
        ),

        GoRoute(
            path: '/signUp',
            pageBuilder: (context, state)
            {
              return CustomTransitionPage(
                  child: const SignUpView(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child)
                  {
                    return FadeTransition(opacity: animation, child: child);
                  }
              );
            }
        ),

        GoRoute(
            path: '/splashView',
            pageBuilder: (context, state)
            {
              return CustomTransitionPage(
                  child: const SplashView(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child)
                  {
                    return FadeTransition(opacity: animation, child: child);
                  }
              );
            }
        ),

        GoRoute(
            path: '/homeView',
            pageBuilder: (context, state)
            {
              return CustomTransitionPage(
                  child: const HomeView(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child)
                  {
                    return FadeTransition(opacity: animation, child: child);
                  }
              );
            }
        ),
      ]
  );
}