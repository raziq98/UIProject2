import 'package:flutter/cupertino.dart';

class dataClass {
  String pictPath;
  double rate;
  String region;
  String placeName;
  int price;

  dataClass(this.pictPath, this.rate, this.region, this.placeName, this.price);

  AssetImage get image => AssetImage(pictPath);
}
