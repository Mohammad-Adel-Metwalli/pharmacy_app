import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pharmacy_app/Core/Errors/hive_error_handling.dart';
import 'package:pharmacy_app/Core/Utils/constants.dart';
import 'package:pharmacy_app/Core/Widgets/failure_dialog.dart';
import 'package:pharmacy_app/Core/Widgets/password_text_field.dart';
import 'package:pharmacy_app/Core/Widgets/username_text_field.dart';
import 'package:pharmacy_app/Features/Data/Models/profile_model.dart';
import 'package:pharmacy_app/Features/Signup/Presentation/Views/Widgets/confirm_password_text_field.dart';
import '../../../Features/Login/Presentation/Views/Widgets/rive_authentication_animation.dart';
import '../../Widgets/success_dialog.dart';
import '../constant_colors.dart';

class AllFunctions
{
  static OutlineInputBorder buildOutlineInputBorder() => OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: const BorderSide(color: ConstantColors.coralOrange));

  static Future<void> loginUser(context) async
  {
    if(await checkUsernameAndPassword())
    {
      RiveAuthenticationAnimation.trigSuccess?.change(true);
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context)
          {
            return const SuccessDialog(text: 'Welcome to farmacia');
          }
      );

      Future.delayed(const Duration(seconds: 3), ()
      {
        Navigator.pop(context);
        GoRouter.of(context).replace('/splashView');
      });
    }

    else
    {
      RiveAuthenticationAnimation.trigFail?.change(true);
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context)
          {
            return const FailureDialog(text: 'username or password are wrong\nPlease try again!');
          }
      );

      Future.delayed(const Duration(seconds: 3), ()
      {
        Navigator.pop(context);
      });
    }
  }

  static Future<void> signupUser(context) async
  {
    if(await checkUsername())
    {
      RiveAuthenticationAnimation.trigFail?.change(true);
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context)
          {
            return const FailureDialog(text: 'This username is already existed');
          }
      );

      Future.delayed(const Duration(seconds: 3), ()
      {
        Navigator.pop(context);
      });
    }

    else
    {
      if (PasswordTextField.passwordController.text == ConfirmPasswordTextField.confirmPasswordController.text)
      {
        if (PasswordTextField.passwordController.text.length >= 8)
        {
          addProfile();

          RiveAuthenticationAnimation.trigSuccess?.change(true);
          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context)
              {
                return const SuccessDialog(text: 'Welcome to farmacia');
              }
          );

          Future.delayed(const Duration(seconds: 3), ()
          {
            Navigator.pop(context);
            GoRouter.of(context).replace('/splashView');
          });
        }

        else
        {
          RiveAuthenticationAnimation.trigFail?.change(true);
          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context)
              {
                return const FailureDialog(text: 'The passwords must be greater than or equal 8 characters');
              }
          );

          Future.delayed(const Duration(seconds: 3), ()
          {
            Navigator.pop(context);
          });
        }
      }

      else
      {
        RiveAuthenticationAnimation.trigFail?.change(true);
        showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context)
            {
              return const FailureDialog(text: 'The passwords must be equivalent');
            }
        );

        Future.delayed(const Duration(seconds: 3), ()
        {
          Navigator.pop(context);
        });
      }
    }
  }

  static Future<bool> checkUsernameAndPassword() async
  {
    var profileBox = Hive.box<ProfileModel>(profileModelBoxName);
    List<ProfileModel> username = profileBox.values.toList();

    if(await HiveErrorHandling.invalidIndexHandling())
    {
      return false;
    }

    else
    {
      return username[0].username == UsernameTextField.usernameController.text && username[0].password == PasswordTextField.passwordController.text;
    }
  }

  static Future<bool> checkUsername() async
  {
    var profileBox = Hive.box<ProfileModel>(profileModelBoxName);
    List<ProfileModel> username = profileBox.values.toList();

    if(await HiveErrorHandling.invalidIndexHandling())
    {
      return false;
    }

    else
    {
      return username[0].username == UsernameTextField.usernameController.text;
    }
  }

  static Future<void> addProfile() async
  {
    ProfileModel profileModel = ProfileModel(UsernameTextField.usernameController.text, PasswordTextField.passwordController.text);
    var profileBox = Hive.box<ProfileModel>(profileModelBoxName);
    profileBox.add(profileModel);
  }
}