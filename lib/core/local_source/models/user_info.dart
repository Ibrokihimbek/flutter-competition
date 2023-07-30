import 'package:hive/hive.dart';

part 'user_info.g.dart';

@HiveType(typeId: 1, adapterName: 'UserInfoHiveAdapter')
class UserInfoHive extends HiveObject {

  UserInfoHive({
    this.gender,
    this.dateOfBirth,
    this.name,
  });
  @HiveField(0)
  String? name;
  @HiveField(1)
  String? dateOfBirth;
  @HiveField(2)
  String? gender;
}
