import 'dart:io';
import 'package:test_app/Library/Domain/api_client/base_api_client.dart';
import 'package:test_app/Library/Domain/api_client/request_api_arguments.dart';

import 'test_person.dart';

class PlaceholderAPIClient {
  
  final BaseAPIClient _apiClient = BaseAPIClient();

  List<Person> _getParser(dynamic json) =>
    (json as List<dynamic>)
    .map((jsonMap) => Person.fromJson(jsonMap)).toList();

  void _validator(response, json) {
    if (response.statusCode != 200) {
      throw const SocketException("2");
    }
  }

  Future<List<Person>> getPersons() async {

    var url = _apiClient.makeUri(
      "https://61c60472c003e70017b799ed.mockapi.io", 
      "/persons",
    );

    var result = await _apiClient.get(
      RequestAPIArguments<List<Person>>(
        url: url, 
        responseContentParser: _getParser,
        internalValidator: _validator,
        needHeaders: false));
    return result;
  }

  Future<Person> deletePerson(int id) async {

    var url = _apiClient.makeUri(
      "https://61c60472c003e70017b799ed.mockapi.io", 
      "/persons/$id");

    var result = await _apiClient.delete(
      RequestAPIArguments<Person>(
        url: url, 
        responseContentParser: (json) => Person.fromJson(json))
      );
    return result;
  }
}

