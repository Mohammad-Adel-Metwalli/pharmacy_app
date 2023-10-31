import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../Utils/constant_colors.dart';
import '../Utils/styles.dart';

class SuccessDialog extends StatelessWidget
{
  const SuccessDialog({
    super.key, required this.text,
  });
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
                  'Assets/Animations/Animation - 1698701099182.json',
                  height: MediaQuery.sizeOf(context).height * 0.3,
                ),

                Text(text, style: Styles.successDialogFont),

                const Spacer(),
              ],
            )
        ),
      ),
    );
  }
}