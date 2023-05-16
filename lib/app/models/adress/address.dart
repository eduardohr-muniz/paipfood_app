// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:paipfood_app/app/models/adress/country.dart';
import 'package:paipfood_app/app/models/user.dart';

import 'city.dart';

class Address {
  int id;
  User? user;
  String? street;
  String? number;
  String? neighborhood;
  String? nickNameNeighborhood;
  String? complement;
  String? zipCode;
  City? city;
  Country? country;
  double? latitude;
  double? longitude;
  bool? billable = false;
  bool? free = false;
  double? amount;
  Address({
    required this.id,
    this.user,
    this.street,
    this.number,
    this.neighborhood,
    this.nickNameNeighborhood,
    this.complement,
    this.zipCode,
    this.city,
    this.country,
    this.latitude,
    this.longitude,
    this.billable,
    this.free,
    this.amount,
  });
}
