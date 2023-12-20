import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:pharmacy_app/Core/Utils/constants.dart';
import 'package:pharmacy_app/Features/Medicines/Presentation/Manager/Medicines_Cubit/medicines_cubit.dart';
import '../../../../../Core/Utils/Functions/all_functions.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../../Core/Utils/styles.dart';
import 'header_section_buttons_items.dart';

class HeaderSectionButtons extends StatefulWidget {
  const HeaderSectionButtons({
    super.key,
    required this.label,
  });

  final String label;

  @override
  State<HeaderSectionButtons> createState() => _HeaderSectionButtonsState();
}

class _HeaderSectionButtonsState extends State<HeaderSectionButtons> {
  TextEditingController drugName = TextEditingController();
  TextEditingController drugPrice = TextEditingController();
  TextEditingController drugQuantity = TextEditingController();
  TextEditingController drugExpDate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<MedicinesCubit, MedicinesState>(
      listener: (context, state)
      {
        BlocProvider.of<MedicinesCubit>(context).listOfDrugsValues;
      },
      child: Ink(
        height: MediaQuery.sizeOf(context).height * 0.055,
        width: MediaQuery.sizeOf(context).width * 0.08,
        decoration: BoxDecoration(
            color: ConstantColors.babyPowder,
            border: Border.all(color: ConstantColors.luxuryBlue, width: 4),
            borderRadius: BorderRadius.circular(16)),
        child: InkWell(
          onTap: () {
            switch (widget.label) {
              case 'Add Drug':
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
                                  SizedBox(
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.05),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      controller: drugName,
                                      cursorColor: ConstantColors.coralOrange,
                                      style: const TextStyle(
                                          color: ConstantColors.coralOrange,
                                          fontWeight: FontWeight.bold),
                                      decoration: InputDecoration(
                                        label: const Text('Drug name',
                                            style: Styles.usernameStyle),
                                        focusColor: ConstantColors.coralOrange,
                                        errorBorder: AllFunctions
                                            .buildOutlineInputBorder(),
                                        enabledBorder: AllFunctions
                                            .buildOutlineInputBorder(),
                                        focusedErrorBorder: AllFunctions
                                            .buildOutlineInputBorder(),
                                        focusedBorder: AllFunctions
                                            .buildOutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      controller: drugPrice,
                                      cursorColor: ConstantColors.coralOrange,
                                      style: const TextStyle(
                                          color: ConstantColors.coralOrange,
                                          fontWeight: FontWeight.bold),
                                      decoration: InputDecoration(
                                        label: const Text('Drug price',
                                            style: Styles.usernameStyle),
                                        focusColor: ConstantColors.coralOrange,
                                        errorBorder: AllFunctions
                                            .buildOutlineInputBorder(),
                                        enabledBorder: AllFunctions
                                            .buildOutlineInputBorder(),
                                        focusedErrorBorder: AllFunctions
                                            .buildOutlineInputBorder(),
                                        focusedBorder: AllFunctions
                                            .buildOutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      controller: drugQuantity,
                                      cursorColor: ConstantColors.coralOrange,
                                      style: const TextStyle(
                                          color: ConstantColors.coralOrange,
                                          fontWeight: FontWeight.bold),
                                      decoration: InputDecoration(
                                        label: const Text('Drug quantity',
                                            style: Styles.usernameStyle),
                                        focusColor: ConstantColors.coralOrange,
                                        errorBorder: AllFunctions
                                            .buildOutlineInputBorder(),
                                        enabledBorder: AllFunctions
                                            .buildOutlineInputBorder(),
                                        focusedErrorBorder: AllFunctions
                                            .buildOutlineInputBorder(),
                                        focusedBorder: AllFunctions
                                            .buildOutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      controller: drugExpDate,
                                      cursorColor: ConstantColors.coralOrange,
                                      style: const TextStyle(
                                          color: ConstantColors.coralOrange,
                                          fontWeight: FontWeight.bold),
                                      decoration: InputDecoration(
                                        label: const Text(
                                            'Drug expiration date',
                                            style: Styles.usernameStyle),
                                        focusColor: ConstantColors.coralOrange,
                                        errorBorder: AllFunctions
                                            .buildOutlineInputBorder(),
                                        enabledBorder: AllFunctions
                                            .buildOutlineInputBorder(),
                                        focusedErrorBorder: AllFunctions
                                            .buildOutlineInputBorder(),
                                        focusedBorder: AllFunctions
                                            .buildOutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.04),
                                  Row(
                                    children: [
                                      const Spacer(),
                                      GestureDetector(
                                        onTap: () =>
                                            Navigator.of(context).pop(),
                                        child: Container(
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.06,
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.1,
                                          decoration: BoxDecoration(
                                              color: ConstantColors.babyPowder,
                                              border: Border.all(
                                                  color:
                                                      ConstantColors.luxuryBlue,
                                                  width: 4),
                                              borderRadius:
                                                  BorderRadius.circular(16)),
                                          child: const Center(
                                              child: Text('Cancel',
                                                  style: TextStyle(
                                                      color: ConstantColors
                                                          .luxuryBlue,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold))),
                                        ),
                                      ),
                                      SizedBox(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.03),
                                      GestureDetector(
                                        onTap: () async {
                                          var boxDrugs = Hive.box(drugsBox);
                                          boxDrugs
                                              .put(drugName.text.toString(), {
                                            'price': drugPrice.text.toString(),
                                            'exp date':
                                                drugExpDate.text.toString(),
                                            'quantity':
                                                drugQuantity.text.toString(),
                                          });

                                          // boxDrugs.clear();
                                        },
                                        child: Container(
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.06,
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.1,
                                          decoration: BoxDecoration(
                                              color: ConstantColors.babyPowder,
                                              border: Border.all(
                                                  color:
                                                      ConstantColors.luxuryBlue,
                                                  width: 4),
                                              borderRadius:
                                                  BorderRadius.circular(16)),
                                          child: const Center(
                                              child: Text('Add',
                                                  style: TextStyle(
                                                      color: ConstantColors
                                                          .luxuryBlue,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold))),
                                        ),
                                      ),
                                      const Spacer(),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    });
                break;

              case 'Edit Drug':
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
                          child: const SingleChildScrollView(
                            child: Column(
                              children: [],
                            ),
                          ),
                        ),
                      );
                    });
                break;
            }
          },
          splashColor: ConstantColors.offWhite.withOpacity(0.3),
          borderRadius: BorderRadius.circular(14),
          child: HeaderSectionButtonsItems(label: widget.label),
        ),
      ),
    );
  }
}
