import 'package:filledstacks_structure_deneme/models/product.dart';
import 'package:flutter/material.dart';

bool isThereAnySale = true;

var kBoxShadowText = BoxShadow(
  color: Colors.black54.withOpacity(0.35),
  spreadRadius: 0.1,
  blurRadius: 10,
  offset: Offset(0, 3.5),
);

var kBoxShadowButton = BoxShadow(
  color: Colors.black54.withOpacity(0.35),
  spreadRadius: 0.1,
  blurRadius: 10,
  offset: Offset(0, 3.5),
);

var kBoxShadowDialog = BoxShadow(
  color: Colors.black.withOpacity(0.35),
  spreadRadius: 0.5,
  blurRadius: 30,
  offset: Offset(0, 3.5),
);

var kBoxShadowWhiteText = BoxShadow(
  color: Colors.white.withOpacity(0.8),
  spreadRadius: 0.5,
  blurRadius: 3,
  offset: Offset(0, 0),
);

// List<Product> dummyProductList = [
//   Product(
//     productID: '1',
//     productModel: 'ABB IRB 120',
//     productCompany: 'ABB Group',
//     productDescription:
//         'ABB’s 6 axis robot – for flexible and compact production.\nThe IRB 120 robot is the latest addition to ABB’s new fourthgeneration of robotic technology.',
//     imageUrl: 'assets/images/robots/abb_irb_120/cover.png',
//     price: '35.000\€',
//     weightCapacity: '12-25 kg',
//     circleAvatarImageUrl: '',
//     imageDetailsList: [
//       'assets/images/robots/abb_irb_120/1.png',
//       'assets/images/robots/abb_irb_120/2.png',
//       'assets/images/robots/abb_irb_120/3.png',
//       'assets/images/robots/abb_irb_120/4.png',
//       'assets/images/robots/abb_irb_120/5.jpg',
//     ],
//     productSpecsImageUrl: 'assets/images/robots/abb_irb_120/specs.png',
//   ),
// ];

final List<String> imgList = [
  'assets/images/pose1.jpg',
  'assets/images/pose2.jpg',
  'assets/images/pose3.jpg',
  'assets/images/pose4.jpg',
  'assets/images/pose5.jpg',
  'assets/images/pose6.jpg',
  'assets/images/pose7.jpg',
  // 'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  // 'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  // 'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  // 'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  // 'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  // 'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

enum PaymentStatus { shipping, payment, summary, success }

final List<String> creditCards = [
  'assets/images/pose1.jpg',
  'assets/images/pose2.jpg',
  'assets/images/pose3.jpg',

  // 'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  // 'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  // 'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  // 'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  // 'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  // 'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];
