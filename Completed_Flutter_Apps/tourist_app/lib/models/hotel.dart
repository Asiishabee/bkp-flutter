import 'package:flutter/material.dart';


class Hotel{
  String imageUrl;
  String name;
  String address;
  int rating;
  int price;

  Hotel({
  this.imageUrl,
  this.name,
  this.address,
  this.rating,
  this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
      imageUrl: 'assets/hotel/pho8.jpg',
      name: 'Twin Farms',
      address: "5th street,MRN",
      rating: 5,
      price: 200,
  ),

  Hotel(
    imageUrl: 'assets/hotel/pho2.jpg',
    name: 'The Brando',
    address: "5th street,MRN",
    rating: 5,
    price: 120,
  ),

  Hotel(
    imageUrl: 'assets/hotel/pho3.jpg',
    name: 'Royal MaleWane',
    address: "5th street,MRN",
    rating: 5,
    price: 170,
  ),

  Hotel(
    imageUrl: 'assets/hotel/pho4.jpg',
    name: 'Knights Inn',
    address: "5th street,MRN",
    rating: 5,
    price: 120,
  ),

  Hotel(
    imageUrl: 'assets/hotel/pho5.jpg',
    name: 'StarOclub',
    address: "5th street,MRN",
    rating: 5,
    price: 300,
  ),

  Hotel(
    imageUrl: 'assets/hotel/pho6.jpg',
    name: 'The Bay Club',
    address: "5th street,MRN",
    rating: 5,
    price: 70,
  ),

    Hotel(
    imageUrl: 'assets/hotel/pho7.jpg',
      name: 'Four Season',
      address: "5th street,MRN",
      rating: 5,
      price: 100,
  ),

  Hotel(
    imageUrl: 'assets/hotel/pho1.jpg',
    name: 'Paramount',
    address: "5th street,MRN",
    rating: 5,
    price: 200,
  ),

  Hotel(
    imageUrl: 'assets/hotel/pho9.jpg',
    name: 'Quaint_Motel',
    address: "5th street,MRN",
    rating: 5,
    price: 150,
  ),
];