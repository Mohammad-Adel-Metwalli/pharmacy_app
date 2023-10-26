import 'package:flutter/material.dart';

class ForgotPasswordLink extends StatelessWidget
{
  const ForgotPasswordLink({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.sizeOf(context).width * 0.27),
      child: InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: (){},
          child: SizedBox(
              width: MediaQuery.sizeOf(context).height <= 682.4 ? MediaQuery.sizeOf(context).width * 0.15 : MediaQuery.sizeOf(context).width * 0.1,
              child: const Center(child: Text('Forgot password?', style: TextStyle(decoration: TextDecoration.underline, fontWeight: FontWeight.bold)))
          )
      ),
    );
  }
}