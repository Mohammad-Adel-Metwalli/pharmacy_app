import 'package:flutter/material.dart';
import 'most_sold_medicines_list.dart';

class MostSoldMedicines extends StatelessWidget
{
  const MostSoldMedicines({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.3,
      width: MediaQuery.sizeOf(context).width * 0.8,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index)
        {
          return const MostSoldMedicinesList();
        },
      ),
    );
  }
}