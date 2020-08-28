import 'package:flutter/material.dart';
import './activity.dart';

class Destination{
  String imageUrl;
  String city;
  String country;
  String description;
  int price;
  List<Activity> activities;

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities,
    this.price,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/img1 (1).jpg',
    name: 'Australia',
    rating: 5,
    price: 70,
  ),

  Activity(
    imageUrl: 'assets/images/img1 (2).jpg',
    name: 'America',
    rating: 5,
    price: 70,
  ),

  Activity(
    imageUrl: 'assets/images/img1 (3).jpg',
    name: 'England',
    rating: 5,
    price: 70,
  ),

  Activity(
    imageUrl: 'assets/images/img1 (4).jpg',
    name: 'Europe',
    rating: 5,
    price: 70,
  ),

  Activity(
    imageUrl: 'assets/images/img1 (5).jpg',
    name: 'Philippines',
    rating: 5,
    price: 70,
  ),

  Activity(
    imageUrl: 'assets/images/img1 (6).jpg',
    name: 'Italy',
    rating: 5,
    price: 70,
  ),

  Activity(
    imageUrl: 'assets/images/img1 (7).jpg',
    name: 'Indonesia',
    rating: 5,
    price: 70,
  ),

  Activity(
    imageUrl: 'assets/images/img1 (8).jpg',
    name: 'Yemen',
    rating: 5,
    price: 70,
  ),

  Activity(
    imageUrl: 'assets/images/img1 (9).jpg',
    name: 'Africa',
    rating: 5,
    price: 70,
  ),
];


List<Destination> destinations = [

  Destination(
      imageUrl: 'assets/images/img1 (1).jpg',
      city: 'Paris',
      country:'france',
      price: 170,
      activities: activities,
  ),

  Destination(
      imageUrl: 'assets/images/img1 (1).jpg',
      city: 'Paris',
      country:'france',
      price: 170,
      activities: activities,
  ),

  Destination(
      imageUrl: 'assets/images/img1 (1).jpg',
      city: 'Paris',
      country: 'france',
      price: 170,
      activities: activities,
  ),

  Destination(
      imageUrl: 'assets/images/img1 (1).jpg',
      city: 'Paris',
      country:'france',
      price: 170,
      activities: activities,
  ),
];
