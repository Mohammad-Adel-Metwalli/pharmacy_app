import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharmacy_app/Core/Utils/constant_colors.dart';

class MostSoldMedicinesListItemBody extends StatelessWidget
{
  const MostSoldMedicinesListItemBody({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
        const ListTile(
          title: Text('Panadol', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          subtitle: Text('800 mlg', style: TextStyle(fontSize: 15)),
        ),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.005),

        Padding(
          padding: EdgeInsets.only(right: MediaQuery.sizeOf(context).width * 0.08),
          child: const Text('Sales: ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        ),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),

        Padding(
          padding: EdgeInsets.only(left: MediaQuery.sizeOf(context).width * 0.02),
          child: Text('1,500.75 EGP', style: GoogleFonts.poppins(color: ConstantColors.night, fontSize: 17.5, fontWeight: FontWeight.bold)),
        ),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),

        Padding(
          padding: EdgeInsets.only(right: MediaQuery.sizeOf(context).width * 0.06),
          child: const Text('Quantity: ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        ),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),

        Padding(
          padding: EdgeInsets.only(left: MediaQuery.sizeOf(context).width * 0.02),
          child: Text('3,200 Strip', style: GoogleFonts.poppins(color: ConstantColors.night, fontSize: 17.5, fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }
}