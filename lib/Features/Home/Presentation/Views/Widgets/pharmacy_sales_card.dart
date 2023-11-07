import 'package:flutter/material.dart';
import 'package:pharmacy_app/Features/Home/Presentation/Views/Widgets/pharmacy_sales_card_body.dart';
import 'package:pharmacy_app/Features/Home/Presentation/Views/Widgets/pharmacy_sales_card_image.dart';

class PharmacySalesCard extends StatefulWidget
{
  const PharmacySalesCard({
    super.key,
  });

  @override
  State<PharmacySalesCard> createState() => _PharmacySalesCardState();
}

class _PharmacySalesCardState extends State<PharmacySalesCard>
{
  @override
  void didChangeDependencies()
  {
    super.didChangeDependencies();
    precacheImage(const AssetImage('Assets/Images/money-sack.png'), context);
  }

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.sizeOf(context).width * 0.01),
      child: const Stack(
        clipBehavior: Clip.none,
        children: [
          PharmacySalesCardBody(),

          PharmacySalesCardImage()
        ],
      ),
    );
  }
}