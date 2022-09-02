// ignore_for_file: unused_label

import 'package:cloud_firestore/cloud_firestore.dart';

class BestSellModel {
  String? nameText;
  String? bodyText;
  String? pathImage;
  String? price;
  String? id;
  BestSellModel({this.nameText, this.bodyText, this.pathImage, this.price});

  factory BestSellModel.fromJson(Map<String, dynamic> data) {
    final nameText = data['nameText'] as String; // cast as non-nullable String
    final bodyText = data["bodyText"] as String;
    final pathImage = data["pathImage"] as String;
    final price = data["price"] as String;

    return BestSellModel(
      nameText: nameText,
      bodyText: bodyText,
      pathImage: pathImage,
      price: price,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nameText': nameText,
      'bodyText': bodyText,
      'pathImage': pathImage,
      'price': price,
    };
  }

  BestSellModel.fromQuerySnapshot(
      DocumentSnapshot<Map<String, dynamic>> snapshot) {
    nameText = snapshot.data()?["nameText"];
    bodyText = snapshot.data()?["bodyText"];
    pathImage = snapshot.data()?["pathImage"];
    price = snapshot.data()?["price"];
    id = snapshot.id;
  }
}
