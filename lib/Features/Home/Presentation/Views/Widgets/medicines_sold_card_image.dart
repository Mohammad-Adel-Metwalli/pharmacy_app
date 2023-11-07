import 'package:flutter/material.dart';

class MedicinesSoldCardImage extends StatelessWidget
{
  const MedicinesSoldCardImage({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Positioned(
        bottom: MediaQuery.sizeOf(context).height * 0.05,
        right: MediaQuery.sizeOf(context).width * 0.058,
        child: Container(
          height: MediaQuery.sizeOf(context).height * 0.2,
          width: MediaQuery.sizeOf(context).width * 0.2,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: const Image(image: AssetImage('Assets/Images/medicine.png')),
        )
    );
  }
}