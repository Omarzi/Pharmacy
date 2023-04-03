import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  // final GetProfileInfoUseCase profileInfoUseCase;
  // final UpdateProfileUseCase updateProfileUseCase;
  // final RegisterUseCase registerUseCase;
  // final LoginUseCase loginUseCase;
  AuthCubit(
      // {required this.profileInfoUseCase,
      // required this.updateProfileUseCase,
      // required this.loginUseCase,
      // required this.registerUseCase
      // }
      )
      : super(AuthInitialState());

  static AuthCubit get(context) => BlocProvider.of<AuthCubit>(context);
  // Auth? profileInfo;
  // Future getProfileInfo() async {
  //   emit(ProfileLoadingState());
  //   var response = await profileInfoUseCase(token);
  //   response.fold((l) {
  //     emit(ProfileErrorState(
  //       message: NetworkExceptions.getErrorMessage(l),
  //     ));
  //   }, (r) {
  //     profileInfo = r;
  //     emit(ProfileLoadedState(message: statusProfileInfo!.message));
  //   });
  // }

  // Future updateProfileInfo(
  //     {required String name, required String email, File? image}) async {
  //   emit(UpdateProfileLoadingState());

  //   var response = await updateProfileUseCase(UpdateProfileParameters(
  //     name: name,
  //     email: email,
  //     image: image,
  //   ));

  //   response.fold((l) {
  //     emit(UpdateProfileErrorState(
  //         message: NetworkExceptions.getErrorMessage(l)));
  //   }, (r) {
  //     emit(UpdateProfileLoadedState(
  //         message: updateProfileStatusModel!.messageEn, updateProfileInfo: r));
  //     getProfileInfo();
  //   });
  // }

  // Auth? loginModel;

  // void login({required String email, required String password}) async {
  //   emit(LoginLoadingState());
  //   var response =
  //       await loginUseCase(LoginParameters(email: email, password: password));
  //   response.fold((l) {
  //     emit(LoginErrorState(
  //       messageApi: statusModel!.messageEn,
  //       messageError: NetworkExceptions.getErrorMessage(l),
  //     ));
  //   }, (r) {
  //     loginModel = r;
  //     emit(LoginLoadedState(
  //       message: statusModel!.messageEn,
  //     ));
  //     token = r.apiToken;
  //     CachedHelper.saveData(key: 'token', value: r.apiToken);
  //   });
  // }

  // Auth? registerModel;
  // void register(
  //     {required String name,
  //     required String email,
  //     required String password}) async {
  //   emit(RegisterLoadingState());
  //   var response = await registerUseCase(RegisterParameters(
  //     name: name,
  //     email: email,
  //     password: password,
  //   ));
  //   response.fold((l) {
  //     emit(RegisterErrorState(
  //       messageApi: registerstatusModel!.messageEn,
  //       messageError: NetworkExceptions.getErrorMessage(l),
  //     ));
  //   }, (r) {
  //     registerModel = r;
  //     emit(RegisterLoadedState(
  //       message: registerstatusModel!.messageEn,
  //     ));
  //     token = r.apiToken;
  //     CachedHelper.saveData(key: 'token', value: r.apiToken);
  //   });
  // }
}
