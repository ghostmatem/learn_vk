import 'dart:convert';
import 'dart:io';

class APIProvider{

  APIProvider(String uri) {
    url = Uri.parse(uri);
  }

  late Uri url;
  final HttpClient _httpClient = HttpClient();
  static final HttpClient _staticHttp = HttpClient();

  Future<dynamic> getJson() async {
    var request = await _httpClient.getUrl(url);
    return await _getDataOfRequest(request);
  }

  Future<dynamic> getJsonOfURL(String url) async {
    var request = await _httpClient.getUrl(Uri.parse(url));
    return await _getDataOfRequest(request);
  }

  static Future<dynamic> getJsonOfURLStatic(String url) async {
    var request = await _staticHttp.getUrl(Uri.parse(url));
    return await _getDataOfRequest(request);
  }

  static Future<dynamic> _getDataOfRequest(HttpClientRequest request) async {
    var response = await request.close();
    if (response.statusCode == 200) {
      var strList = await response.transform(utf8.decoder).toList();
      return jsonDecode(strList.join());
    }
    throw Exception();
  }
}