import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharmacy_app/Features/Home/Presentation/Views/Widgets/revenue_line_chart.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import 'custom_cards.dart';

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
        physics: const BouncingScrollPhysics(),
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

            Padding(
              padding: EdgeInsets.only(right: MediaQuery.sizeOf(context).width * 0.012),
              child: Ink(
                height: MediaQuery.sizeOf(context).height * 0.4,
                width: MediaQuery.sizeOf(context).width * 0.82,
                decoration: BoxDecoration(color: ConstantColors.offWhite, borderRadius: BorderRadius.circular(15), border: Border.all(color: ConstantColors.night, width: 4)),
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),

                    const Text('The most sold medicines', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),

                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.3,
                      width: MediaQuery.sizeOf(context).width * 0.8,
                      child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index)
                        {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width * 0.002),
                            child: SizedBox(
                              height: MediaQuery.sizeOf(context).height * 0.3,
                              width: MediaQuery.sizeOf(context).width * 0.15,
                              child: Card(
                                color: ConstantColors.customedGrey,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15), side: const BorderSide(color: ConstantColors.babyPowder, width: 5)),

                                child: InkWell(
                                    onTap: (){},
                                    borderRadius: BorderRadius.circular(15),
                                    splashColor: ConstantColors.customedGrey,
                                    child: const MostSoldMedicines()
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
          ],
        ),
      ),
    );
  }
}

class MostSoldMedicines extends StatelessWidget
{
  const MostSoldMedicines({
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

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),


      ],
    );
  }
}