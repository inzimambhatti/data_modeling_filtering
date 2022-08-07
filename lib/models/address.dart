import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable()
class Address {
  Address();

  late num id;
  late String name;
  late String username;
  late String email;
  late Address address;
  late String phone;
  late String website;
  late Map<String,dynamic> company;
  
  factory Address.fromJson(Map<String,dynamic> json) => _$AddressFromJson(json);
  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
