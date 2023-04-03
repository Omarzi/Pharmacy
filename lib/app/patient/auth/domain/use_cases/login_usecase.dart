// import 'package:booking_app/app/auth/domain/base_repository/auth_base_repository.dart';
// import 'package:booking_app/app/auth/domain/entities/auth_entity.dart';
// import 'package:booking_app/core/base_usecase/base_usecase.dart';
// import 'package:dartz/dartz.dart';
// import 'package:equatable/equatable.dart';

// class LoginUseCase extends BaseUseCase<Auth, LoginParameters> {
//   final AuthBaseRepository baseRepository;

//   LoginUseCase({required this.baseRepository});
//   @override
//   Future<Either<dynamic, Auth>> call(LoginParameters parameters) async {
//     return await baseRepository.login(parameters: parameters);
//   }
// }

// class LoginParameters extends Equatable {
//   final String email;
//   final String password;

//   const LoginParameters({required this.email, required this.password});

//   @override
//   List<Object> get props => [email, password];
// }
