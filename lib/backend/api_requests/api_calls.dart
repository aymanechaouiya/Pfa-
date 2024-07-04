import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetUserRoleCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getUserRole',
      apiUrl:
          'https://dzpyohvzxhxlymcdzvzs.supabase.co/rest/v1/user_roles?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImR6cHlvaHZ6eGh4bHltY2R6dnpzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjAwMzM4MzksImV4cCI6MjAzNTYwOTgzOX0.Dkqxn10HYoxEdvFws-68VLkvtfA_XlEE6xnKDcbOh3Y',
        'Authorization':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImR6cHlvaHZ6eGh4bHltY2R6dnpzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjAwMzM4MzksImV4cCI6MjAzNTYwOTgzOX0.Dkqxn10HYoxEdvFws-68VLkvtfA_XlEE6xnKDcbOh3Y',
        'Range': '0-9',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? rolName(dynamic response) => (getJsonField(
        response,
        r'''$[:].role''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class PhonePostCall {
  static Future<ApiCallResponse> call({
    String? phone = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "phone": "$phone",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'phone post',
      apiUrl: 'https://dzpyohvzxhxlymcdzvzs.supabase.co/auth/v1/signup',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImR6cHlvaHZ6eGh4bHltY2R6dnpzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjAwMzM4MzksImV4cCI6MjAzNTYwOTgzOX0.Dkqxn10HYoxEdvFws-68VLkvtfA_XlEE6xnKDcbOh3Y',
        'Authorization':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImR6cHlvaHZ6eGh4bHltY2R6dnpzIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcyMDAzMzgzOSwiZXhwIjoyMDM1NjA5ODM5fQ.-7hmtL1crT75c-fnc7MhMTlegC40nc42R4V1pF-JJGY',
      },
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
