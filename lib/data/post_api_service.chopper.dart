// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$PostApiService extends PostApiService {
  _$PostApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = PostApiService;

  @override
  Future<Response<dynamic>> userLogin(String username, String password) {
    final $url = '<apiurl>/user/login';
    final $body = <String, dynamic>{'username': username, 'password': password};
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> userRegister(
      String mail,
      String nameSurname,
      int phoneNumber,
      String gender,
      String password,
      String uniqueId,
      String registrationToken) {
    final $url = '<apiurl>/user/register';
    final $body = <String, dynamic>{
      'email': mail,
      'name': nameSurname,
      'pno': phoneNumber,
      'gender': gender,
      'password': password,
      'uuid': uniqueId,
      'registration_token': registrationToken
    };
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> logout(String token) {
    final $url = '<apiurl>/user/logout';
    final $headers = {'token': token};
    final $request = Request('POST', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> createDeneme(String token, int level) {
    final $url = '<apiurl>/book/denemecreate';
    final $params = <String, dynamic>{'level': level};
    final $headers = {'token': token};
    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }
}
