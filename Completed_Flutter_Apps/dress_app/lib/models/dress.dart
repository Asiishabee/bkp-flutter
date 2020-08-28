import 'package:flutter/foundation.dart';

enum DressType {
  Simple,
  PartyWear,
  OfficeWear,
}

enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

class DressCollections {
  final String id;
  final List<String> collections;
  final String title;
  final String imageUrl;
  final List<String> about;
  final List<String> reviews;
  final DressType dressType;
  final Affordability affordability;
  final bool isCotton;
  final bool isSilk;
  final bool isDenim;

  const DressCollections({
    @required this.id,
    @required this.collections,
    @required this.title,
    @required this.imageUrl,
    @required this.about,
    @required this.reviews,
    @required this.dressType,
    @required this.affordability,
    @required this.isCotton,
    @required this.isSilk,
    @required this.isDenim,
  });
}
