import 'package:flutter/material.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import 'most_sold_medicines_list_item_body.dart';

class MostSoldMedicinesList extends StatelessWidget
{
  const MostSoldMedicinesList({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width * 0.002),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.3,
        width: MediaQuery.sizeOf(context).width * 0.15,
        child: Card(
          shadowColor: ConstantColors.night,
          color: ConstantColors.jasmin,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15), side: const BorderSide(color: ConstantColors.babyPowder, width: 5)),

          child: InkWell(
              onTap: ()
              {
                showDialog(
                    context: context,
                    builder: (context)
                    {
                      return Dialog(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        child: Container(
                          height: MediaQuery.sizeOf(context).height * 0.3,
                          width: MediaQuery.sizeOf(context).width * 0.1,
                          decoration: BoxDecoration(color: ConstantColors.babyPowder, borderRadius: BorderRadius.circular(15)),

                          child: const Center(
                            child: Text('Pharmacy'),
                          ),
                        ),
                      );
                    }
                );
              },

              borderRadius: BorderRadius.circular(15),
              splashColor: ConstantColors.babyPowder.withOpacity(0.3),
              child: const MostSoldMedicinesListItemBody()
          ),
        ),
      ),
    );
  }
}