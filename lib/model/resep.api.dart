import 'dart:convert';
import 'package:resep_makanan/model/resep.dart';
import 'package:http/http.dart' as http;

class ResepApi {
// var req = unirest("GET", "https://yummly2.p.rapidapi.com/feeds/list");
// req.query({
  // "limit": "24",
  // "start": "0"
// });

// req.headers({
  // "X-RapidAPI-Key": "479298c831mshb1aa1be33b4c5e1p166666jsnb41120d4fcfc",
  // "X-RapidAPI-Host": "yummly2.p.rapidapi.com",
  // "useQueryString": true
// });

  static Future<List<Resep>> getResep() async {
    var uri = Uri.https('tasty.p.rapidapi.com', '/recipes/list',
        {"from": "0", "size": "50", "tags": "under_30_minutes"});

    final response = await http.get(uri, headers: {
      "X-RapidAPI-Key": "479298c831mshb1aa1be33b4c5e1p166666jsnb41120d4fcfc",
      "X-RapidAPI-Host": "tasty.p.rapidapi.com",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);

    List _temp = [];

    for (var i in data['results']) {
      _temp.add(i);
    }
    return Resep.resepFromSnapshot(_temp);
  }
}
