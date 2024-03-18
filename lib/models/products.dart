import 'package:flutter/material.dart';

class Product {
  bool? isBestSeller;
  String? _id;
  String? name;
  String? description;
  List<int>? price;
  String? brand;
  double? rating;
  int? numberReviews;
  String? image;
  List<String>? images;

  Product(
    this.isBestSeller,
    this._id,
    this.name,
    this.description,
    this.price,
    this.brand,
    this.rating,
    this.numberReviews,
    this.image,
    this.images,
  );

  factory Product.fromJson(Map<String, dynamic> json) {
    List<int> prices = [];
    List<String> imagess = [];
    json["price"].forEach((element) {
      prices.add(element);
    });
    json['images'].forEach((element) {
      imagess.add(element);
    });
    return Product(
        json['isBestSeller'],
        json['_id'],
        json['name'],
        json['description'],
        prices,
        json['brand'],
        json['rating'],
        json['numberReviews'],
        json['image'],
        imagess);
  }
}
