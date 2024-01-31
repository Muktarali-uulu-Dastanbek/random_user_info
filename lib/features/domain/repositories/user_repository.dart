import 'package:tapbarr_exemple/features/data/models/user_model.dart';

abstract class UserRepository {
  ///RU: Получение информации о пользователе
  ///
  ///EN: Getting information about user
  Future<UserModel> getUserInfo();
}
