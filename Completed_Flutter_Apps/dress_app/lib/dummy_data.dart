import 'package:dress_app/models/dress.dart';
import 'package:flutter/material.dart';
import 'package:dress_app/models/collections.dart';

const DUMMY_OutsideCOLLECTIONS= const [

  TypeCollections(
    id: 'C1',
    title: 'Saree',
    color: Colors.grey,
  ),

  TypeCollections(
    id: 'C2',
    title: 'Chudithars',
    color: Colors.grey,
  ),

  TypeCollections(
    id: 'C3',
    title: 'Duppattas',
    color: Colors.grey,
  ),

  TypeCollections(
    id: 'C4',
    title: 'Crop Tops',
    color: Colors.grey,
  ),

  TypeCollections(
    id: 'C5',
    title: 'Long Tops',
    color: Colors.grey,
  ),

  TypeCollections(
    id: 'C6',
    title: 'Palazos',
    color: Colors.grey,
  ),

  TypeCollections(
    id: 'C7',
    title: 'Abayas',
    color: Colors.grey,
  ),

  TypeCollections(
    id: 'C8',
    title: 'Night-Suits',
    color: Colors.grey,
  ),
  TypeCollections(
    id: 'C9',
    title:'Baby wear',
    color: Colors.grey,
  ),
  TypeCollections(
    id: 'C8',
    title: 'Nighties',
    color: Colors.grey,
  ),
  TypeCollections(
    id: 'C8',
    title: 'Leggins',
    color: Colors.grey,
  ),
];

const DUMMY_InsideCOLLECTIONS = const [

DressCollections(
  id: 'M1',
  collections: [
    'C1',
  ],
  title: 'Saree 1',
  dressType: DressType.Simple,
  affordability: Affordability.Luxurious,
  imageUrl:
  'https://images.unsplash.com/photo-1595579537943-9907188d22fd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  about: [
    'Pure Cotton',
    'Made in china',
  ],
  reviews: [
    'Very nice cloths',
    'fantastic fabric',
  ],


  isCotton: true,
  isSilk: false,
  isDenim: false,
),
];
