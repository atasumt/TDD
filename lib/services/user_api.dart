import 'dart:convert';

import 'package:tdd_ders/model/user.dart';
import 'package:http/http.dart' as http;

class UserApi {
  Future<List<User>?> getUsers() async {
    var response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (response.statusCode == 200) {
      var liste = jsonDecode(response.body) as List;
      return liste.map((e) => User.fromJson(e)).toList();
    } else {
      throw ("Api Hatası");
    }
  }
}
