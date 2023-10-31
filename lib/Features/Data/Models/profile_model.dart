import 'package:hive/hive.dart';
part 'profile_model.g.dart';

@HiveType(typeId: 0)
class ProfileModel extends HiveObject
{
  ProfileModel(this.username, this.password);

  @HiveField(0)
  final String username;

  @HiveField(1)
  final String password;
}