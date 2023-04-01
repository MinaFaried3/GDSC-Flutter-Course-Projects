import 'package:dio/dio.dart';

class DioServices {
  final _dio = Dio(
    BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com"),
  );

  Future<List<dynamic>> getPosts() async {
    Response response;

    try {
      response = await _dio.post(
        "/posts",
      );
      return response.data;
    } on DioError {
      return [];
    }
  }
}
