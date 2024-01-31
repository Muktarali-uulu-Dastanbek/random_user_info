// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:tapbarr_exemple/features/data/models/user_model.dart';
import 'package:tapbarr_exemple/features/domain/use_cases/user_use_case.dart';
import 'package:tapbarr_exemple/internal/catch_exception.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserUseCase userUseCase;
  UserBloc({required this.userUseCase}) : super(UserInitialState()) {
    on<GetUserInfoEvent>((event, emit) async {
      emit(UserLoadingState());

      try {
        final UserModel userModel = await userUseCase.getUserInfo();
        emit(UserLoadedState(userModel: userModel));
      } catch (e) {
        emit(UserErrorState(error: CatchException.convertException(e)));
      }
    });
  }
}
