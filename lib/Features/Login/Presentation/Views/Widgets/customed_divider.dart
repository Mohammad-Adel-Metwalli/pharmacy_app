import 'package:flutter/material.dart';

class CustomedDivider extends StatelessWidget
{
  const CustomedDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.004,
      width: MediaQuery.sizeOf(context).width * 0.08,
      decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(16)),
    );
  }
}