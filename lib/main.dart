import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharmacy_app/Core/Utils/app_router.dart';

void main()
{
  runApp(const PharmacyApp());
}

class PharmacyApp extends StatelessWidget
{
  const PharmacyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, textTheme: GoogleFonts.poppinsTextTheme()),
      routerConfig: AppRouter.router,
    );
  }
}