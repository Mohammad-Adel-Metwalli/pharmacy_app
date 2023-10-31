import 'package:hive/hive.dart';
import '../../Features/Data/Models/profile_model.dart';
import '../Utils/constants.dart';

class HiveErrorHandling
{
  static Future<bool> invalidIndexHandling() async
  {
    var profileBox = Hive.box<ProfileModel>(profileModelBoxName);
    List<ProfileModel> username = profileBox.values.toList();

    return username.isEmpty;
  }
}