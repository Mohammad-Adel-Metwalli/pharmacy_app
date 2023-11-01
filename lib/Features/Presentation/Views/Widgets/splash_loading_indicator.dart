import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pharmacy_app/Features/Presentation/Views/Widgets/animated_bill.dart';
import '../../../../Core/Utils/constant_colors.dart';

class SplashLoadingIndicator extends StatelessWidget
{
  const SplashLoadingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return CircularPercentIndicator(
      radius: MediaQuery.sizeOf(context).height * 0.15,
      animation: true,
      animationDuration: 5000,
      lineWidth: 15,
      circularStrokeCap: CircularStrokeCap.round,
      backgroundColor: ConstantColors.babyPowder,
      percent: 1,
      progressColor: ConstantColors.luxuryBlue,
      center: const AnimatedBill(),
    );
  }
}