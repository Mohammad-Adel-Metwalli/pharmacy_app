import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:pharmacy_app/Core/Utils/constants.dart';
import 'package:pharmacy_app/Features/Data/Models/profile_model.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import 'copy_rights_section.dart';
import 'menu_button.dart';
import 'menu_circular_avatar.dart';

class MenuSectionBody extends StatelessWidget
{
  const MenuSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    var profileBox = Hive.box<ProfileModel>(profileModelBoxName);
    List<ProfileModel> listProfile = profileBox.values.toList();

    return Column(
      children: [
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

        const MenuCircularAvatar(),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

        Text('Dr. ${listProfile[0].username}', style: GoogleFonts.poppins(fontWeight: FontWeight.bold, color: ConstantColors.babyPowder, fontSize: 20)),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

        const MenuButton(label: 'Dashboard', path: 'Assets/Images/Home 4.svg'),

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

        const CopyRightsSection()
      ],
    );
  }
}