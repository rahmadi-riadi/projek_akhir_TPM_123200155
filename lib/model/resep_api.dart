import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:list_resep/model/resep.dart';
import 'package:list_resep/model/resep_api.dart';
import 'package:http/http.dart' as http;

class ResepApi {
  static Future<List<Resep>> getResep() async {
    var uri = Uri.https('tasty.p.rapidapi.com', '/recipes/list',
        {"from": "0", "size": "20", "tags": "under_30_minutes"});

    final response = await http.get(uri, headers: {
      "X-RapidAPI-Key": "571aa511c9mshf6bcbd709852db6p15c3efjsne45e6b48e1d5",
      "X-RapidAPI-Host": "tasty.p.rapidapi.com",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List temp = [];

    for (var i in data['results']) {
      temp.add(i);
    }

    return Resep.resepFromSnapshot(temp);
  }
}
