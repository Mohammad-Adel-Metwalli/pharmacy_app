import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:pharmacy_app/Core/Utils/constants.dart';
import 'package:pharmacy_app/Core/Utils/app_router.dart';
import 'package:pharmacy_app/Features/Data/Models/profile_model.dart';
import 'package:pharmacy_app/Features/Medicines/Presentation/Manager/Medicines_Cubit/medicines_cubit.dart';

void main() async
{
  await Hive.initFlutter();
  Hive.registerAdapter(ProfileModelAdapter());
  await Hive.openBox<ProfileModel>(profileModelBoxName);
  await Hive.openBox(drugsBox);
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const PharmacyApp());
}

class PharmacyApp extends StatelessWidget
{
  const PharmacyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return BlocProvider(
      create: (context) => MedicinesCubit(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            useMaterial3: true, textTheme: GoogleFonts.poppinsTextTheme()),
        routerConfig: AppRouter.router,
      ),
    );
  }
}