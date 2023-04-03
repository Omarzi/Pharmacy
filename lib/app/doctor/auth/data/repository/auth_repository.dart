
// import 'package:dartz/dartz.dart';

// class AuthRepository extends AuthBaseRepository {
//   final AuthBaseRemoteDataSource baseRemoteDataSource;

//   AuthRepository(this.baseRemoteDataSource);
//   @override
//   Future<Either<dynamic, Auth>> login(
//       {required LoginParameters parameters}) async {
//     try {
//       var reponse =
//           await baseRemoteDataSource.postLogin(loginParameters: parameters);
//       return Right(reponse);
//     } catch (e) {
//       return Left(NetworkExceptions.getDioException(e));
//     }
//   }

//   @override
//   Future<Either<dynamic, Auth>> register(
//       {required RegisterParameters registerParameters}) async {
//     try {
//       var reponse = await baseRemoteDataSource.postRegister(
//           registerParameters: registerParameters);
//       return Right(reponse);
//     } catch (e) {
//       return Left(NetworkExceptions.getDioException(e));
//     }
//   }

//   @override
//   Future<Either<dynamic, Auth>> profileInfo({String? token}) async {
//     try {
//       var reponse = await baseRemoteDataSource.getProfileInfo(token: token);
//       return Right(reponse);
//     } catch (e) {
//       return Left(NetworkExceptions.getDioException(e));
//     }
//   }

//   @override
//   Future<Either<dynamic, Auth>> updateProfile(
//       {required UpdateProfileParameters parameters}) async {
//     try {
//       var reponse = await baseRemoteDataSource.postUpdateProfile(
//           updateProfileParameters: parameters, token: token);
//       return Right(reponse);
//     } catch (e) {
//       return Left(NetworkExceptions.getDioException(e));
//     }
//   }
// }
