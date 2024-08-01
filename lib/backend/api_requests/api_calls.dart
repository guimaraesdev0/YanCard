import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SigninCall {
  static Future<ApiCallResponse> call({
    String? nome = '',
    String? email = '',
    String? senha = '',
    String? telefone = '',
    String? nascimento = '',
  }) async {
    final ffApiRequestBody = '''
{
  "nome": "${nome}",
  "email": "${email}",
  "senha": "${senha}",
  "telefone": "${telefone}",
  "nascimento": "${nascimento}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Signin',
      apiUrl: 'https://yan-card-api-production.up.railway.app/api/signin',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LoginCall {
  static Future<ApiCallResponse> call({
    String? telefone = '',
    String? senha = '',
  }) async {
    final ffApiRequestBody = '''
{
  "telefone": "${telefone}",
  "senha": "${senha}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: 'https://yan-card-api-production.up.railway.app/api/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.nome''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.email''',
      ));
  static String? telefone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.telefone''',
      ));
  static String? nascimento(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.nascimento''',
      ));
  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
  static int? userid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user.id''',
      ));
}

class VerifyRecoveryCodeCall {
  static Future<ApiCallResponse> call({
    String? code = '',
  }) async {
    final ffApiRequestBody = '''
{
  "Code": "${code}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'VerifyRecoveryCode',
      apiUrl:
          'https://yan-card-api-production.up.railway.app/api/verifyRecoveryCode',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RequestRecoveryCodeCall {
  static Future<ApiCallResponse> call({
    String? telefone = '',
  }) async {
    final ffApiRequestBody = '''
{
  "telefone": "${telefone}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RequestRecoveryCode',
      apiUrl:
          'https://yan-card-api-production.up.railway.app/api/requestRecoverypass',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChangePasswordCall {
  static Future<ApiCallResponse> call({
    String? codigo = '',
    String? newPassword = '',
  }) async {
    final ffApiRequestBody = '''
{
  "codigo": "${codigo}",
  "newPassword": "${newPassword}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ChangePassword',
      apiUrl: 'https://yan-card-api-production.up.railway.app/api/recoverypass',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUserCuponsCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetUserCupons',
      apiUrl:
          'https://yan-card-api-production.up.railway.app/api/getcupons/${userId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'userId': userId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? data(dynamic response) => (getJsonField(
        response,
        r'''$[:].data''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? used(dynamic response) => (getJsonField(
        response,
        r'''$[:].usado''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? restaurantName(dynamic response) => (getJsonField(
        response,
        r'''$[:].nomeRestaurante''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
