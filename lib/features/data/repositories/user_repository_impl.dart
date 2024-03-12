import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:tapbarr_exemple/features/data/models/user_model.dart';
import 'package:tapbarr_exemple/features/domain/repositories/user_repository.dart';
import 'package:tapbarr_exemple/internal/api_requester.dart';
import 'package:tapbarr_exemple/internal/catch_exception.dart';

class UserRepositoryImpl implements UserRepository {
  ApiRequester apiRequester = ApiRequester();
  @override
  Future<UserModel> getUserInfo() async {
    try {
      Response response = await apiRequester.toGet("${apiRequester.url}");

      log("getUserInfo result== ${response.data}");

      if (response.statusCode == 200) {
        return UserModel.fromJson(response.data);
      }

      throw response;
    } catch (e) {
      throw CatchException.convertException(e);
    }
  }
}
