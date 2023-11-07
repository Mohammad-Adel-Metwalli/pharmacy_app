import 'package:flutter/material.dart';
import 'package:pharmacy_app/Features/Home/Presentation/Views/Widgets/revenue_line_chart_body.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class RevenueLineChart extends StatelessWidget
{
  const RevenueLineChart({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Container(
      margin: EdgeInsets.only(right: MediaQuery.sizeOf(context).width * 0.01),
      height: MediaQuery.sizeOf(context).height * 0.7,
      width: MediaQuery.sizeOf(context).width * 0.82,
      decoration: BoxDecoration(border: Border.all(color: ConstantColors.night, width: 4), borderRadius: BorderRadius.circular(15), color: ConstantColors.offWhite),
      child: const RevenueLineChartBody(),
    );
  }
}