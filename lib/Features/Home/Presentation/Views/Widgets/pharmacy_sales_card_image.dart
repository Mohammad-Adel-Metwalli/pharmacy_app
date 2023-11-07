import 'package:flutter/material.dart';

class PharmacySalesCardImage extends StatelessWidget
{
  const PharmacySalesCardImage({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Positioned(
        bottom: MediaQuery.sizeOf(context).height * 0.06,
        right: MediaQuery.sizeOf(context).width * 0.08,
        child: Container(
          height: MediaQuery.sizeOf(context).height * 0.15,
          width: MediaQuery.sizeOf(context).width * 0.15,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: const Image(image: AssetImage('Assets/Images/money-sack.png')),
        )
    );
  }
}