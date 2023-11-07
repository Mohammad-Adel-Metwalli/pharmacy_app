import 'package:animated_digit/animated_digit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAnimatedDigitWidget extends StatelessWidget
{
  const CustomAnimatedDigitWidget({
    super.key, required this.value, required this.suffix, required this.isThereFraction,
  });
  final double value;
  final String suffix;
  final bool isThereFraction;

  @override
  Widget build(BuildContext context)
  {
    return AnimatedDigitWidget(
      value: value,
      textStyle: GoogleFonts.ibmPlexSansArabic(fontWeight: FontWeight.bold, fontSize: 18),
      fractionDigits: isThereFraction ? 2 : 0,
      enableSeparator: true,
      separateSymbol: ',',
      decimalSeparator: '.',
      suffix: suffix,
    );
  }
}