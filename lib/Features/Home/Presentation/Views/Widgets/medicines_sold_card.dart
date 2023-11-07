import 'package:flutter/material.dart';
import 'medicines_sold_card_body.dart';
import 'medicines_sold_card_image.dart';

class MedicinesSoldCard extends StatefulWidget
{
  const MedicinesSoldCard({
    super.key,
  });

  @override
  State<MedicinesSoldCard> createState() => _MedicinesSoldCardState();
}

class _MedicinesSoldCardState extends State<MedicinesSoldCard>
{
  @override
  void didChangeDependencies()
  {
    super.didChangeDependencies();
    precacheImage(const AssetImage('Assets/Images/medicine.png'), context);
  }

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.sizeOf(context).width * 0.01),
      child: const Stack(
        clipBehavior: Clip.none,
        children: [
          MedicinesSoldCardBody(),

          MedicinesSoldCardImage()
        ],
      ),
    );
  }
}