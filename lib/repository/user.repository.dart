import 'package:flutter_getx/core/utils/dio_service.dart';
import 'package:flutter_getx/data/model/error400_response_model.dart';
import 'package:flutter_getx/data/model/login_response_model.dart';
import 'package:logger/logger.dart';

class UserRepository {
  DioHttpService httpService = DioHttpService();
  final logger = Logger();
  UserRepository();

  // Declare api method here

  Future<dynamic> loginUser(
      {required String email, required String password}) async {
    const targetUri = '/api/login';

    httpService.init();
    try {
      var response = await httpService.request(
        url: targetUri,
        method: ApiMethod.POST,
        params: {'email': email, 'password': password},
      );

      if (response.statusCode == 200) {
        return LoginResponseModel.fromJson(response.data);
      }

      if (response.statusCode == 400) {
        return Error400ResponseModel.fromJson(response.data);
      }
    } catch (e) {
      logger.e(e);
    }
  }
}
