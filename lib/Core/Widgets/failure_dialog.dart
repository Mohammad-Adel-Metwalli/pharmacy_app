import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../Utils/constant_colors.dart';
import '../Utils/styles.dart';

class FailureDialog extends StatelessWidget
{
  const FailureDialog({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context)
  {
    return Dialog(
      backgroundColor: ConstantColors.babyPowder,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.4,
        width: MediaQuery.sizeOf(context).width * 0.25,
        decoration: BoxDecoration(
            color: ConstantColors.babyPowder,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: ConstantColors.night, width: 4.5)
        ),
        child: Center(
            child: Column(
              children: [
                const Spacer(),

                Lottie.asset(
                  'Assets/Animations/Animation - 1698703453386.json',
                  height: MediaQuery.sizeOf(context).height * 0.25,
                ),

                Text(text, style: Styles.failureDialogFont, textAlign: TextAlign.center),

                const Spacer(),
              ],
            )
        ),
      ),
    );
  }
}