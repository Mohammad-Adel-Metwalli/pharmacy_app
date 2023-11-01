import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharmacy_app/Core/Utils/constant_colors.dart';
import 'package:pharmacy_app/Core/Utils/constants.dart';
import 'menu_button.dart';
import 'menu_circular_avatar.dart';

class HomeViewBody extends StatelessWidget
{
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        Ink(
          height: double.infinity,
          width: MediaQuery.sizeOf(context).width * 0.15,
          decoration: const BoxDecoration(
            color: ConstantColors.luxuryBlue,
            borderRadius: BorderRadius.only(topRight: cornersOfMenu, bottomRight: cornersOfMenu)
          ),

          child: Column(
            children: [
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

              const MenuCircularAvatar(),

              SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

              Text('Dr. Alejandro', style: GoogleFonts.carterOne(fontWeight: FontWeight.bold, color: ConstantColors.babyPowder, fontSize: 20)),

              SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

              const MenuButton(label: 'Home', path: 'Assets/Images/Home 4.svg'),

              SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

              const MenuButton(label: 'Medicines', path: 'Assets/Images/medicines.svg'),

              SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

              const MenuButton(label: 'Suppliers', path: 'Assets/Images/users-three.svg'),

              SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

              const MenuButton(label: 'Accounts', path: 'Assets/Images/Dollar Circle.svg'),

              SizedBox(height: MediaQuery.sizeOf(context).height * 0.15),

              const MenuButton(label: 'Settings', path: 'Assets/Images/Settings_Future.svg'),

              SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

              const MenuButton(label: 'Logout', path: 'Assets/Images/Logout.svg'),

              SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),

              Row(
                children: [
                  const Spacer(),

                  const Text('Fabuluso Amigos❤️', style: TextStyle(color: ConstantColors.babyPowder, fontWeight: FontWeight.bold)),

                  const Icon(Icons.copyright_sharp, color: ConstantColors.babyPowder),

                  Text(DateTime.now().year.toString(), style: const TextStyle(color: ConstantColors.babyPowder, fontWeight: FontWeight.bold)),

                  const Spacer(),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}