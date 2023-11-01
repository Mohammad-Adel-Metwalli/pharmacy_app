import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharmacy_app/Features/Presentation/Views/Widgets/splash_loading_indicator.dart';
import '../../../../Core/Utils/constant_colors.dart';

class SplashViewBodyItems extends StatelessWidget
{
  const SplashViewBodyItems({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: Column(
        children: [
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.1),

          Animate(
              effects: const [FadeEffect(), ScaleEffect()],
              child: Text('Farmacia Del Futuro', style: GoogleFonts.carterOne(fontSize: 35, fontWeight: FontWeight.bold, color: ConstantColors.coralOrange))
          ),

          const Spacer(flex: 1),

          Animate(
              effects: const [FadeEffect(), ScaleEffect()],
              child: Text('نحن نهتمُّ بشأنك', style: GoogleFonts.amiri(fontWeight: FontWeight.bold, fontSize: 30, color: ConstantColors.coralOrange))
          ),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

          Animate(
              effects: const [FadeEffect(), ScaleEffect()],
              child: Text('We care about you', style: GoogleFonts.carterOne(fontSize: 30, fontWeight: FontWeight.bold, color: ConstantColors.coralOrange))
          ),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

          Animate(
              effects: const [FadeEffect(), ScaleEffect()],
              child: Text('Nosotros nos preocupamos por ti', style: GoogleFonts.carterOne(fontSize: 30, fontWeight: FontWeight.bold, color: ConstantColors.coralOrange))
          ),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

          const SplashLoadingIndicator(),

          const Spacer(),
        ],
      ),
    );
  }
}