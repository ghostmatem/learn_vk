import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:test_app/Library/Domain/to_json_decoded_extention.dart';

class RequestAPIArguments<T> {
  final Uri url;
  late final RequestTypeHandler typeHandler;
  bool needHeaders;
  final Map<String, dynamic>? headers; 
  final T Function(dynamic json) responseContentParser;
  final Future<dynamic> Function (HttpClientResponse response) responseStreamDecoder;
  final void Function(HttpClientResponse response, T json)? internalValidator;
  

  /// By default, typeHandler.jsonUTF8
  RequestAPIArguments({ 
    required this.url,
    required this.responseContentParser,    
    this.internalValidator,
    RequestTypeHandler? requestTypeHandler,
    this.responseStreamDecoder = ResponseStreamDecoders.toJsonUTF8Decoded,
    this.needHeaders = true,
    this.headers,
  }) {
    typeHandler = requestTypeHandler ?? RequestTypeHandler.jsonUTF8;
  }
}

class RequestTypeHandler {
  static final RequestTypeHandler jsonUTF8 = RequestTypeHandler(
    contentType: ContentType.json,
    requestBodyEncoder: (requestBody) =>
      jsonEncode(requestBody)
  );

  final ContentType contentType;
  final dynamic Function (dynamic content) requestBodyEncoder;
  

  RequestTypeHandler(
    {
      required this.contentType, 
      required this.requestBodyEncoder, 
  });
}