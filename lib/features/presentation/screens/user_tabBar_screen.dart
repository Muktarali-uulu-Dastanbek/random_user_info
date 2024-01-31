import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tapbarr_exemple/features/data/repositories/user_repository_impl.dart';
import 'package:tapbarr_exemple/features/domain/use_cases/user_use_case.dart';
import 'package:tapbarr_exemple/features/presentation/logic/bloc/user_bloc.dart';
import 'package:tapbarr_exemple/features/presentation/widgets/e_mail.dart';
import 'package:tapbarr_exemple/features/presentation/widgets/location.dart';
import 'package:tapbarr_exemple/features/presentation/widgets/main_Info.dart';
import 'package:tapbarr_exemple/internal/helpers/text_helper.dart';

class UserTabBarScreen extends StatefulWidget {
  const UserTabBarScreen({super.key});

  @override
  State<UserTabBarScreen> createState() => _UserTabBarScreenState();
}

class _UserTabBarScreenState extends State<UserTabBarScreen> {
  final UserBloc userBloc = UserBloc(
    userUseCase: UserUseCase(
      userRepository: UserRepositoryImpl(),
    ),
  );

  @override
  void initState() {
    userBloc.add(GetUserInfoEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: BlocConsumer<UserBloc, UserState>(
          bloc: userBloc,
          listener: (context, state) {
            if (state is UserErrorState) {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.error.message.toString())));
            }
          },
          builder: (context, state) {
            if (state is UserLoadingState) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is UserLoadedState) {
              String? titleName = state.userModel.results?[0].name?.title;
              String? firstName = state.userModel.results?[0].name?.first;
              String? lastName = state.userModel.results?[0].name?.last;
              String? avatar = state.userModel.results?[0].picture?.large;
              String? gender = state.userModel.results?[0].gender;
              var dateOfBirth = state.userModel.results?[0].dob?.date;
              var age = state.userModel.results?[0].dob?.age;
              String? phoneNumber = state.userModel.results?[0].phone;
              String? location = state.userModel.results?[0].location?.country;
              String? city = state.userModel.results?[0].location?.city;
              String? email = state.userModel.results?[0].email;
              String? userName = state.userModel.results?[0].login?.username;
              String? cell = state.userModel.results?[0].cell;
              var registred = state.userModel.results?[0].registered?.date;

              return Column(
                children: [
                  SizedBox(height: 40),
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "$avatar",
                        ),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(75),
                    ),
                    height: 150,
                    width: 150,
                  ),
                  Text(
                    "${state.userModel.results?[0].name?.first}",
                    style: TextHelper.w600s16,
                  ),
                  TabBar(
                    indicatorColor: Colors.red,
                    labelColor: Colors.black,
                    labelStyle: TextHelper.w600s16,
                    tabs: [
                      Tab(
                        text: "Main info",
                      ),
                      Tab(
                        text: "Location",
                      ),
                      Tab(
                        text: "E-mail",
                      ),
                    ],
                    indicatorSize: TabBarIndicatorSize.tab,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 20.0,
                      ),
                      child: TabBarView(
                        children: [
                          MainInfo(
                            titleName: titleName,
                            firstName: firstName,
                            lastName: lastName,
                            gender: gender,
                            dateOfBirth: dateOfBirth,
                            age: age,
                          ),
                          Location(
                            phoneNumber: phoneNumber,
                            location: location,
                            city: city,
                            email: email,
                            age: age,
                          ),
                          E_mail(
                            firstName: firstName,
                            email: email,
                            userName: userName,
                            phoneNumber: phoneNumber,
                            cell: cell,
                            registred: registred,
                          ),
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      maximumSize: Size(200, 50),
                      fixedSize: Size(double.infinity, 50),
                      // padding: EdgeInsets.all(20),
                    ),
                    onPressed: () {
                      userBloc.add(GetUserInfoEvent());
                    },
                    child: Text(
                      "Поиск",
                      style: TextHelper.w600s14,
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              );
            }
            return Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  maximumSize: Size(200, 50),
                  fixedSize: Size(double.infinity, 50),
                  // padding: EdgeInsets.all(20),
                ),
                onPressed: () {
                  userBloc.add(GetUserInfoEvent());
                },
                child: Text(
                  "Поиск",
                  style: TextHelper.w600s14,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
