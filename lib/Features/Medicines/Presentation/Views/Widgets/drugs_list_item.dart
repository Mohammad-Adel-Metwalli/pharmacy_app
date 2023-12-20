import 'package:flutter/material.dart';
import 'package:pharmacy_app/Core/Utils/constants.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class DrugsListItem extends StatefulWidget
{
  const DrugsListItem({
    super.key,
    required this.index,
    required this.drug,
    required this.drugValues,
  });
  final int index;
  final List<dynamic> drug;
  final List<dynamic> drugValues;

  @override
  State<DrugsListItem> createState() => _DrugsListItemState();
}

class _DrugsListItemState extends State<DrugsListItem>
{
  int quantity = 1;

  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {

              return Dialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  child: Container(
                    height: MediaQuery.sizeOf(context).height * 0.6,
                    width: MediaQuery.sizeOf(context).width * 0.3,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: ConstantColors.luxuryBlue, width: 4),
                        borderRadius: BorderRadius.circular(16),
                        color: ConstantColors.babyPowder),

                    child: SingleChildScrollView(
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

                            listDrugs[widget.index],

                            Text(widget.drug[widget.index], style: const TextStyle(color: ConstantColors.night, fontWeight: FontWeight.bold, fontSize: 20)),

                            SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

                            Text('${widget.drugValues[widget.index]['price']} EGP', style: const TextStyle(color: ConstantColors.night, fontWeight: FontWeight.bold, fontSize: 20)),

                            Text('Expiration date ${widget.drugValues[widget.index]['exp date']}', style: const TextStyle(color: ConstantColors.night, fontWeight: FontWeight.bold, fontSize: 20)),

                            SizedBox(height: MediaQuery.sizeOf(context).height * 0.08),

                            Row(
                              children: [
                                const Spacer(),

                                IconButton(
                                    onPressed: ()
                                    {

                                    },
                                    icon: const Icon(Icons.remove_circle_rounded, color: ConstantColors.luxuryBlue)
                                ),

                                Text(quantity.toString(), style: const TextStyle(color: ConstantColors.night, fontSize: 25, fontWeight: FontWeight.bold)),

                                IconButton(
                                    onPressed: ()
                                    {

                                    },
                                    icon: const Icon(Icons.add_circle_rounded, color: ConstantColors.luxuryBlue)
                                ),

                                const Spacer(),
                              ],
                            ),

                            Container()
                          ],
                        ),
                      ),
                    ),
                  ),
              );
            });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.sizeOf(context).height * 0.01,
            horizontal: MediaQuery.sizeOf(context).width * 0.02),
        child: Center(
          child: Container(
            height: MediaQuery.sizeOf(context).height * 0.3,
            width: MediaQuery.sizeOf(context).width * 0.5,
            decoration: BoxDecoration(
                color: ConstantColors.babyPowder,
                border: Border.all(color: ConstantColors.luxuryBlue, width: 4),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                const Spacer(),
                listDrugs[widget.index],
                SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),
                Column(
                  children: [
                    const Spacer(),
                    Text(widget.drug[widget.index],
                        style: const TextStyle(
                            color: ConstantColors.luxuryBlue,
                            fontWeight: FontWeight.bold,
                            fontSize: 35)),
                    Text('${widget.drugValues[widget.index]['price']} EGP',
                        style: const TextStyle(
                            color: ConstantColors.luxuryBlue,
                            fontWeight: FontWeight.bold,
                            fontSize: 25)),
                    const Spacer(),
                  ],
                ),
                SizedBox(width: MediaQuery.sizeOf(context).width * 0.05),
                Text('Quantity: ${widget.drugValues[widget.index]['quantity']}',
                    style: const TextStyle(
                        color: ConstantColors.luxuryBlue,
                        fontWeight: FontWeight.bold,
                        fontSize: 25)),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
