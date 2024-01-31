// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:tapbarr_exemple/features/data/models/user_model.dart';
import 'package:tapbarr_exemple/features/domain/repositories/user_repository.dart';

class UserUseCase {
  final UserRepository userRepository;
  UserUseCase({required this.userRepository});

  Future<UserModel> getUserInfo() async {
    return await userRepository.getUserInfo();
  }
}
