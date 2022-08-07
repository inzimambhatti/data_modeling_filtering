import 'package:json_annotation/json_annotation.dart';
import "company.dart";
part 'user.g.dart';

@JsonSerializable()
class User {
  User();

  late num id;
  late String name;
  late String username;
  late String email;
  late Map<String,dynamic> address;
  late String phone;
  late String website;
  late Company company;
  
  factory User.fromJson(Map<String,dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
