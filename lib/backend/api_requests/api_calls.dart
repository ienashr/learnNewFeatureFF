import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class DonationCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    List<FFUploadedFile>? fileList,
  }) {
    final file = fileList ?? [];

    return ApiManager.instance.makeApiCall(
      callName: 'donation',
      apiUrl: 'https://directus-ienas.cloud.programmercepat.com/items/donation',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'name': name,
        'imageFile': file,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ImageFileCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? image1,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'imageFile',
      apiUrl:
          'https://directus-ienas.cloud.programmercepat.com/items/imageFile',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'image1': image1,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.data.id''',
      );
}

class FilesCall {
  static Future<ApiCallResponse> call({
    List<FFUploadedFile>? fileList,
  }) {
    final file = fileList ?? [];

    return ApiManager.instance.makeApiCall(
      callName: 'files',
      apiUrl: 'https://directus-ienas.cloud.programmercepat.com/files',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'file': file,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.data.id''',
      );
}

class TestMultipleCall {
  static Future<ApiCallResponse> call({
    List<FFUploadedFile>? filesList,
  }) {
    final files = filesList ?? [];

    return ApiManager.instance.makeApiCall(
      callName: 'testMultiple',
      apiUrl:
          'https://directus-ienas.cloud.programmercepat.com/items/TestMultiple',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'files': files,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.data.id''',
      );
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
