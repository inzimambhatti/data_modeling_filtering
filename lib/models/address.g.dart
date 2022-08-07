// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => Address()
  ..id = json['id'] as num
  ..name = json['name'] as String
  ..username = json['username'] as String
  ..email = json['email'] as String
  ..address = Address.fromJson(json['address'] as Map<String, dynamic>)
  ..phone = json['phone'] as String
  ..website = json['website'] as String
  ..company = json['company'] as Map<String, dynamic>;

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'address': instance.address,
      'phone': instance.phone,
      'website': instance.website,
      'company': instance.company,
    };
