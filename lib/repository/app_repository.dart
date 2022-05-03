import 'package:dio/dio.dart';
import 'package:monitest/repository/model/ApiResponse.dart';

class AppRepository {
  final Dio dio;
  AppRepository(this.dio);

  Future<ApiResponse> getAgentInformation() async {
    final response =
        await dio.get('https://moni-staging-1.vercel.app/api/loans');
    print('This is response ${response.data}');
    return ApiResponse.fromJson(response.data);
  }
}
