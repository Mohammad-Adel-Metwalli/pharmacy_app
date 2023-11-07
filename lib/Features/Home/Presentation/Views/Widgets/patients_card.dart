import 'package:flutter/material.dart';
import 'package:pharmacy_app/Features/Home/Presentation/Views/Widgets/patients_card_body.dart';
import 'package:pharmacy_app/Features/Home/Presentation/Views/Widgets/patients_card_image.dart';

class PatientsCard extends StatelessWidget
{
  const PatientsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.sizeOf(context).width * 0.01),
      child: const Stack(
        clipBehavior: Clip.none,
        children: [
          PatientsCardBody(),

          PatientsCardImage()
        ],
      ),
    );
  }
}