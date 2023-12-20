import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharmacy_app/Features/Home/Presentation/Views/Widgets/revenue_line_chart.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import 'custom_cards.dart';
import 'most_sold_medicines_section.dart';

class HomeViewBodyItems extends StatelessWidget
{
  const HomeViewBodyItems({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: double.infinity,
      width: MediaQuery.sizeOf(context).width * 0.85,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: MediaQuery.sizeOf(context).width * 0.7, top: MediaQuery.sizeOf(context).height * 0.01),
              child: Text('Dashboard', style: GoogleFonts.neuton(fontWeight: FontWeight.bold, fontSize: 40, color: ConstantColors.night)),
            ),

            Padding(
              padding: EdgeInsets.only(right: MediaQuery.sizeOf(context).width * 0.52),
              child: Text('Here you will find the whole sight on your pharmacy', style: GoogleFonts.neuton(fontWeight: FontWeight.bold, fontSize: 20, color: ConstantColors.night)),
            ),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

            const CustomCards(),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),

            const RevenueLineChart(),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),

            const MostSoldMedicinesSection(),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
          ],
        ),
      ),
    );
  }
}