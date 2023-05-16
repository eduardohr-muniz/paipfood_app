// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:paipfood_app/app/models/adress/address.dart';
import 'package:paipfood_app/app/models/restaurant.dart';

class City {
  int id;
  String name;
  List<Restaurant>? restaurants;
  List<Address>? addressNeighborhoodImport;
  City({
    required this.id,
    required this.name,
    this.restaurants,
    this.addressNeighborhoodImport,
  });
}
