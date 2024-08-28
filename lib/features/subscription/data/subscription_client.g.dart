// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _SubscriptionClient implements SubscriptionClient {
  _SubscriptionClient(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://app.big-nose.ru/api/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<HttpResponse<List<String>>> payByTariffName(
    String accessToken,
    String subType, {
    String contentType = 'application/json',
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'sub_type': subType};
    final _headers = <String, dynamic>{
      r'Authorization': accessToken,
      r'Content-Type': contentType,
    };
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<HttpResponse<List<String>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
      contentType: contentType,
    )
            .compose(
              _dio.options,
              'payment/form',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = _result.data!.cast<String>();
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  @override
  Future<bool> checkPaymentStatus(
    String accessToken,
    String payId, {
    String contentType = 'application/json',
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'pay_id': payId};
    final _headers = <String, dynamic>{
      r'Authorization': accessToken,
      r'Content-Type': contentType,
    };
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<bool>(_setStreamType<bool>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
      contentType: contentType,
    )
        .compose(
          _dio.options,
          'payment/check',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        ))));
    final value = _result.data!;
    return value;
  }

  @override
  Future<HttpResponse<dynamic>> getAllTariffs(
    String accessToken, {
    String contentType = 'application/json',
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'Authorization': accessToken,
      r'Content-Type': contentType,
    };
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _result =
        await _dio.fetch(_setStreamType<HttpResponse<dynamic>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
      contentType: contentType,
    )
            .compose(
              _dio.options,
              'subscription/all',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = _result.data;
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
