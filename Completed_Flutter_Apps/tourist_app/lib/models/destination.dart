import 'package:touristapp/models/activity.dart';

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
    imageUrl: 'assets/images/act1.jpg',
    name: 'Effel Tower',
    rating: 5,
    price: 70,
      startTimes: ['10.00 am'],
    stopTimes: ['5.00 pm'],
    type: 'Sightseeing tour',
  ),

  Activity(
    imageUrl: 'assets/images/act2.jpg',
    name: 'Louvre Museum',
    rating: 5,
    price: 70,
    startTimes: ['9.00 am'],
    stopTimes: ['1.00 pm'],
    type: 'Sightseeing tour',
  ),

  Activity(
    imageUrl: 'assets/images/act3.jpg',
    name: 'Cathedral Notre-Dame de paris',
    rating: 5,
    price: 70,
      startTimes: ['7.00 am'],
    stopTimes: ['4.00 pm'],
    type: 'Prayer & Worship',
  ),

  Activity(
    imageUrl: 'assets/images/act4.jpg',
    name: 'Arc de Triomphe',
    rating: 5,
    price: 70,
      startTimes: ['9.00 am'],
    stopTimes: ['10.00 pm'],
    type: 'Arch & National monument',
  ),

  Activity(
    imageUrl: 'assets/images/act5.jpg',
    name: 'French riviera',
    rating: 5,
    price: 70,
      startTimes: ['10.00 am'],
    stopTimes: ['1.00 pm'],
    type: 'Boating',
  ),

  Activity(
    imageUrl: 'assets/images/act6.jpg',
    name: 'Sacre-Coeur',
    rating: 5,
    price: 70,
      startTimes: ['9.00 am'],
    stopTimes: ['5.00 pm'],
    type: 'Hilltop',
  ),

  Activity(
    imageUrl: 'assets/images/act7.jpg',
    name: 'Champs_Elysees',
    rating: 5,
    price: 70,
      startTimes: ['10.00 am'],
    stopTimes: ['3.00 pm'],
    type: 'Dining & Shops',
  ),

  Activity(
    imageUrl: 'assets/images/act8.jpg',
    name: 'Mont Saint_Michel',
    rating: 5,
    price: 70,
      startTimes: ['9.00 am'],
    stopTimes: ['11.00 pm'],
    type: 'Abbey, Castle',
  ),

  Activity(
    imageUrl: 'assets/images/act9.jpg',
    name: 'Musee d_Orsay' ,
    rating: 5,
    price: 70,
      startTimes: ['11.00 am'],
    stopTimes: ['8.00 pm'],
    type: 'Masterpieces of 19th&20th art',
  ),
];


List<Destination> destinations = [

  Destination(
      imageUrl: 'assets/images/img1 (7).jpg',
      city: 'Paris',
      country:'france',
      price: 170,
      description: 'hello,You are welcome here',
      activities: activities,
  ),

  Destination(
      imageUrl: 'assets/images/img1 (2).jpg',
      city: 'Armenia',
      country:'yervane',
      price: 170,
      description: 'hello,You are welcome here',
      activities: activities,
  ),

  Destination(
      imageUrl: 'assets/images/img1 (3).jpg',
      city: 'Belgium',
      country: 'Brussels',
      price: 170,
      description: 'hello,You are welcome here',
      activities: activities,
  ),

  Destination(
      imageUrl: 'assets/images/img1 (4).jpg',
      city: 'Canada',
      country:'ottawa',
      price: 170,
      description: 'hello,You are welcome here',
      activities: activities,
  ),

  Destination(
    imageUrl: 'assets/images/img1 (5).jpg',
    city: 'Denmark',
    country:'Copenhagen',
    price: 170,
    description: 'hello,You are welcome here',
    activities: activities,
  ),

  Destination(
    imageUrl: 'assets/images/img1 (6).jpg',
    city: 'Estonia',
    country:'Tallinn',
    price: 170,
    description: 'hello,You are welcome here',
    activities: activities,
  ),

  Destination(
    imageUrl: 'assets/images/img1 (1).jpg',
    city: 'Italy',
    country:'Rome',
    price: 170,
    description: 'hello,You are welcome here',
    activities: activities,
  ),

  Destination(
    imageUrl: 'assets/images/img1 (8).jpg',
    city: 'Lithuania',
    country:'vilnius',
    price: 170,
    description: 'hello,You are welcome here',
    activities: activities,
  ),

  Destination(
    imageUrl: 'assets/images/img1 (9).jpg',
    city: 'Morocco',
    country:'Rabat',
    price: 170,
    description: 'hello,You are welcome here',
    activities: activities,
  ),
];
