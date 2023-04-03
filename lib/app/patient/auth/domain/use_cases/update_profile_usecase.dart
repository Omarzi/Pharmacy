// import 'dart:io';

// import 'package:booking_app/app/auth/domain/base_repository/auth_base_repository.dart';
// import 'package:booking_app/app/auth/domain/entities/auth_entity.dart';
// import 'package:dartz/dartz.dart';
// import 'package:equatable/equatable.dart';

// import 'package:booking_app/core/base_usecase/base_usecase.dart';

// class UpdateProfileUseCase extends BaseUseCase<Auth, UpdateProfileParameters> {
//   final AuthBaseRepository authBaseRepository;

//   UpdateProfileUseCase({required this.authBaseRepository});
//   @override
//   Future<Either<dynamic, Auth>> call(UpdateProfileParameters parameters) async {
//     return await authBaseRepository.updateProfile(parameters: parameters);
//   }
// }

// class UpdateProfileParameters extends Equatable {
//   final String name;
//   final String email;
//   final File? image;

//   const UpdateProfileParameters(
//       {required this.name, required this.email, this.image});

//   @override
//   List<Object?> get props => [name, email, image];
// }
