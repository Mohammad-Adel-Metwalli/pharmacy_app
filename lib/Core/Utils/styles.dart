import 'package:google_fonts/google_fonts.dart';

import 'constant_colors.dart';
import 'package:flutter/material.dart';

abstract class Styles
{
  static const usernameStyle = TextStyle(color: ConstantColors.coralOrange, fontWeight: FontWeight.bold);
  static const passwordStyle = TextStyle(color: ConstantColors.coralOrange, fontWeight: FontWeight.bold);
  static final successDialogFont = GoogleFonts.carterOne(color: ConstantColors.coralOrange, fontWeight: FontWeight.bold, fontSize: 25);
  static final failureDialogFont = GoogleFonts.carterOne(color: ConstantColors.coralOrange, fontWeight: FontWeight.bold, fontSize: 18);
}