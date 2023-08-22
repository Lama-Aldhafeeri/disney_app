import 'dart:convert';

import 'package:disney_app/model/disney_character_model.dart';
import 'package:http/http.dart' as http;

class Service {
  Future<DisneyCharacter> getDisneyCharacter() async {
    final response =
        await http.get(Uri.parse('https://api.disneyapi.dev/character'));

    final responseAsJson = json.decode(response.body);
    final characters = DisneyCharacter.fromJson(responseAsJson);

    return characters;
  }
}
