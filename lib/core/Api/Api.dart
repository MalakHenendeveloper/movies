import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movies/core/Api/Endpoint.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@singleton
class ApiManger {
  late Dio dio;
  ApiManger() {
    dio = Dio();
    dio.interceptors.add(PrettyDioLogger(
      request: true,
      requestHeader: false,
      requestBody: false,
      responseHeader: false,
      responseBody: true,
      error: true,
      maxWidth: 90,
    ));
  }
  Future<Response> getData(
    String endPoint, {
    // String? Moviesid,
    Map<String, dynamic>? Headers,
    Map<String, dynamic>? queryParameters,
  }) {
    return dio.get(
      Endpoint.path + endPoint,
      queryParameters: queryParameters,
      options: Options(
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI5YTdmYTc4ZGY5MjFhZDYwM2JlMTk0ODBlYmYxZTQxZSIsIm5iZiI6MTcyOTI2MDc0Ni45MTE4MzUsInN1YiI6IjY2MmI5ZjRkZTE2ZTVhMDExZWU3NzBmNCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.stMpuVdWISxsAquAX8JIien_RDbXkU2p1qUSZtJO8Zc',
          'accept': 'application/json',
        },
        validateStatus: (status) => true,
      ),
    );
  }
  // Future<Response> getsearchmovies (
  //     String endPoint, {
  //       Map<String, dynamic>? Headers,
  //       Map<String, dynamic>? queryParameters,
  //     }) {
  //   return dio.get(
  //    'https://api.themoviedb.org/3/search/movie?query=wiked&include_adult=false&language=en-US&page=1',
  //     queryParameters: queryParameters,
  //     options: Options(
  //       headers: {
  //         'Authorization':
  //         'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI5YTdmYTc4ZGY5MjFhZDYwM2JlMTk0ODBlYmYxZTQxZSIsIm5iZiI6MTcyOTI2MDc0Ni45MTE4MzUsInN1YiI6IjY2MmI5ZjRkZTE2ZTVhMDExZWU3NzBmNCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.stMpuVdWISxsAquAX8JIien_RDbXkU2p1qUSZtJO8Zc',
  //         'accept': 'application/json',
  //       },
  //       validateStatus: (status) => true,
  //     ),
  //   );
  // }

  Future<Response> getDetailsMovies(
    int Moviesid, {
    Map<String, dynamic>? Headers,
    Map<String, dynamic>? queryParameters,
  }) {
    return dio.get(
      Endpoint.path + Endpoint.details + "/$Moviesid",
      queryParameters: queryParameters,
      options: Options(
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI5YTdmYTc4ZGY5MjFhZDYwM2JlMTk0ODBlYmYxZTQxZSIsIm5iZiI6MTcyOTI2MDc0Ni45MTE4MzUsInN1YiI6IjY2MmI5ZjRkZTE2ZTVhMDExZWU3NzBmNCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.stMpuVdWISxsAquAX8JIien_RDbXkU2p1qUSZtJO8Zc',
          'accept': 'application/json',
        },
        validateStatus: (status) => true,
      ),
    );
  }

  Future<Response> getSimilerMovies(
    int Moviesid,
    String endpoint, {
    Map<String, dynamic>? Headers,
    Map<String, dynamic>? queryParameters,
  }) {
    return dio.get(
      Endpoint.path + "/$Moviesid" + endpoint,
      queryParameters: queryParameters,
      options: Options(
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI5YTdmYTc4ZGY5MjFhZDYwM2JlMTk0ODBlYmYxZTQxZSIsIm5iZiI6MTcyOTI2MDc0Ni45MTE4MzUsInN1YiI6IjY2MmI5ZjRkZTE2ZTVhMDExZWU3NzBmNCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.stMpuVdWISxsAquAX8JIien_RDbXkU2p1qUSZtJO8Zc',
          'accept': 'application/json',
        },
        validateStatus: (status) => true,
      ),
    );
  }
}
