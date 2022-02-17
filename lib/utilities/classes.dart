import 'package:flutter/material.dart';

List<String> cities = [
  "Mumbai",
  "Delhi",
  "Chennai",
  "Hyderabad",
];

class GraphData
{
  double X;
  double Y;
  GraphData(this.X,this.Y);
}


class CityData {
  String? cityName;
  String? crimeName;
  GraphData? graphData;
  CityData({this.cityName, this.crimeName,this.graphData});
}

