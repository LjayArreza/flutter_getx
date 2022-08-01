import 'package:flutter_getx/app/services/dio_service.dart';
import 'package:flutter_getx/data/model/error400_response_model.dart';
import 'package:flutter_getx/data/model/loginModel.dart';
import 'package:flutter_getx/data/model/login_response_model.dart';
import 'package:flutter_getx/data/provider/network/apis/api_endpoint.dart';
import 'package:flutter_getx/data/provider/network/apis/api_request_representable.dart';
import 'package:logger/logger.dart';

class UserRepository {
  DioHttpService httpService = DioHttpService();
  final logger = Logger();
  UserRepository();

  Future<dynamic> loginUser(
      {required String email, required String password}) async {
    httpService.init();
    try {
      var response = await httpService.request(
        url: APIEndpoint.LOGIN,
        method: ApiMethod.post,
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
