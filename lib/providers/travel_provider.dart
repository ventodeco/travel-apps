import 'dart:convert';

import 'package:GoTravel/models/travel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TravelProvider extends ChangeNotifier {
  bool isFavorite = true;

  getTravel(Travel travel) {
    return this.isFavorite = travel.isLiked;
  }

  getTravelLocation() async {
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

  getFavoriteTravel() async {
    var result = await http
        .get('http://18.142.174.30/api/v1/travels/locations/favorite');

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<Travel> travels = data.map((item) => Travel.fromJson(item)).toList();

      return travels;
    } else {
      return <Travel>[];
    }
  }

  updateTravel(int id, bool isLiked) async {
    var result = await http.post(
        'http://18.142.174.30/api/v1/travels/locations/' +
            id.toString() +
            '/update?like=' +
            isLiked.toString());

    return result;
  }

  setFavorite() {
    this.isFavorite = !this.isFavorite;
    notifyListeners();
    return this.isFavorite;
  }
}
