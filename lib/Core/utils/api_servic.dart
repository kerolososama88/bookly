import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';

  late final Dio dio;

  ApiService(this.dio);

  Future<Response> get({required String endPoint}) async {
    Response response = await dio.get('$_baseUrl$endPoint');
    return response;
  }
}
