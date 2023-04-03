// import 'package:booking_app/app/auth/domain/entities/auth_entity.dart';
// import 'package:booking_app/core/base_usecase/base_usecase.dart';
// import 'package:dartz/dartz.dart';
// import 'package:equatable/equatable.dart';
// import 'package:booking_app/app/auth/domain/base_repository/auth_base_repository.dart';

// class RegisterUseCase extends BaseUseCase<Auth, RegisterParameters> {
//   final AuthBaseRepository authBaseRepository;

//   RegisterUseCase({required this.authBaseRepository});

//   @override
//   Future<Either<dynamic, Auth>> call(RegisterParameters parameters) async {
//     return await authBaseRepository.register(registerParameters: parameters);
//   }
// }

// class RegisterParameters extends Equatable {
//   final String name;
//   final String email;
//   final String password;

//   const RegisterParameters(
//       {required this.name, required this.email, required this.password});

//   @override
//   List<Object> get props => [name, email, password];
// }
