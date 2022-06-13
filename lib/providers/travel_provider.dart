import 'dart:convert';

import 'package:GoTravel/models/travel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TravelProvider extends ChangeNotifier {
  getTravelLocation() async {
    print("tes");
    var result =
        await http.get('http://18.142.174.30/api/v1/travels/locations');

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<Travel> travels = data.map((item) => Travel.fromJson(item)).toList();

      return travels;
    } else {
      return <Travel>[];
    }
  }
}
