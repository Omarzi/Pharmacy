// import 'package:booking_app/app/auth/data/models/auth_model.dart';
// import 'package:booking_app/app/auth/domain/use_cases/login_usecase.dart';
// import 'package:booking_app/app/auth/domain/use_cases/register_usecase.dart';
// import 'package:booking_app/app/auth/domain/use_cases/update_profile_usecase.dart';
// import 'package:booking_app/core/network/api_constance.dart';
// import 'package:booking_app/core/network/status.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';

// abstract class AuthBaseRemoteDataSource {
//   Future<AuthModel> postLogin({
//     String? base,
//     String? endPoint,
//     dynamic data,
//     required LoginParameters loginParameters,
//     String? token,
//     ProgressCallback? progressCallback,
//     CancelToken? cancelToken,
//     int? timeOut,
//     bool isMultipart = false,
//   });
//   Future<AuthModel> postRegister({
//     String? base,
//     String? endPoint,
//     dynamic data,
//     required RegisterParameters registerParameters,
//     String? token,
//     ProgressCallback? progressCallback,
//     CancelToken? cancelToken,
//     int? timeOut,
//     bool isMultipart = false,
//   });
//   Future<AuthModel> getProfileInfo({
//     String? base,
//     String? endPoint,
//     dynamic data,
//     String? token,
//     ProgressCallback? progressCallback,
//     CancelToken? cancelToken,
//     int? timeOut,
//     bool isMultipart = false,
//   });
//   Future<AuthModel> postUpdateProfile({
//     String? base,
//     String? endPoint,
//     dynamic data,
//     required UpdateProfileParameters updateProfileParameters,
//     String? token,
//     ProgressCallback? progressCallback,
//     CancelToken? cancelToken,
//     int? timeOut,
//     bool isMultipart = false,
//   });
// }

// class AuthRemoteDataSource extends AuthBaseRemoteDataSource {
//   @override
//   Future<AuthModel> postLogin({
//     String? base,
//     String? endPoint,
//     data,
//     required LoginParameters loginParameters,
//     String? token,
//     ProgressCallback? progressCallback,
//     CancelToken? cancelToken,
//     int? timeOut,
//     bool isMultipart = false,
//   }) async {
//     if (timeOut != null) {
//       dio.options.connectTimeout = timeOut;
//     }

//     dio.options.headers = {
//       if (isMultipart) 'Content-Type': 'multipart/form-data',
//       if (!isMultipart) 'Content-Type': 'application/json',
//       if (!isMultipart) 'Accept': 'application/json',
//       if (token != null) 'token': token,
//     };
//     debugPrint('URL => ${dio.options.baseUrl + ApiConstance.loginEndPoint}');
//     debugPrint('Header => ${dio.options.headers.toString()}');
//     debugPrint('Body => $data');

//     var response = await dio.post(ApiConstance.loginEndPoint, queryParameters: {
//       'email': loginParameters.email,
//       'password': loginParameters.password,
//     });
//     if (response.data['status']['type'] == '1' && response.statusCode == 200) {
//       statusModel = StatusModel.fromJson(response.data['status']);
//       return AuthModel.fromJson(response.data);
//     } else if (response.data['status']['type'] == '0' &&
//         response.statusCode == 200) {
//       statusModel = StatusModel.fromJson(response.data['status']);
//       throw Exception();
//     } else {
//       throw Exception();
//     }
//   }

//   @override
//   Future<AuthModel> postRegister({
//     String? base,
//     String? endPoint,
//     data,
//     required RegisterParameters registerParameters,
//     String? token,
//     ProgressCallback? progressCallback,
//     CancelToken? cancelToken,
//     int? timeOut,
//     bool isMultipart = false,
//   }) async {
//     if (timeOut != null) {
//       dio.options.connectTimeout = timeOut;
//     }

//     dio.options.headers = {
//       if (isMultipart) 'Content-Type': 'multipart/form-data',
//       if (!isMultipart) 'Content-Type': 'application/json',
//       if (!isMultipart) 'Accept': 'application/json',
//       if (token != null) 'token': token,
//     };

//     var response =
//         await dio.post(ApiConstance.registerEndPoint, queryParameters: {
//       'name': registerParameters.name,
//       'email': registerParameters.email,
//       'password': registerParameters.password,
//       'password_confirmation': registerParameters.password,
//     });

//     if (response.statusCode == 200) {
//       registerstatusModel = StatusModel.fromJson(response.data['status']);
//       return AuthModel.fromJson(response.data);
//     } else {
//       throw Exception();
//     }
//   }

//   @override
//   Future<AuthModel> getProfileInfo({
//     String? base,
//     String? endPoint,
//     data,
//     String? token,
//     ProgressCallback? progressCallback,
//     CancelToken? cancelToken,
//     int? timeOut,
//     bool isMultipart = false,
//   }) async {
//     if (timeOut != null) {
//       dio.options.connectTimeout = timeOut;
//     }

//     dio.options.headers = {
//       if (isMultipart) 'Content-Type': 'multipart/form-data',
//       if (!isMultipart) 'Content-Type': 'application/json',
//       if (!isMultipart) 'Accept': 'application/json',
//       if (token != null) 'token': token,
//     };

//     var response = await dio.get(
//       ApiConstance.getProfileInfoEndPoint,
//     );

//     if (response.statusCode == 200) {
//       statusProfileInfo = StatusProfileInfo.fromJson(response.data['status']);
//       return AuthModel.fromJson(response.data);
//     } else {
//       throw Exception();
//     }
//   }

//   @override
//   Future<AuthModel> postUpdateProfile({
//     String? base,
//     String? endPoint,
//     data,
//     required UpdateProfileParameters updateProfileParameters,
//     String? token,
//     ProgressCallback? progressCallback,
//     CancelToken? cancelToken,
//     int? timeOut,
//     bool isMultipart = false,
//   }) async {
//     FormData? formData;
//     if (timeOut != null) {
//       dio.options.connectTimeout = timeOut;
//     }
//     if (updateProfileParameters.image != null) {
//       isMultipart = true;
//       String fileName = updateProfileParameters.image!.path.split('/').last;
//       formData = FormData.fromMap({
//         "image": await MultipartFile.fromFile(
//             updateProfileParameters.image!.path,
//             filename: fileName),
//       });
//     }
//     dio.options.headers = {
//       if (isMultipart) 'Content-Type': 'multipart/form-data',
//       if (!isMultipart) 'Content-Type': 'application/json',
//       if (!isMultipart) 'Accept': 'application/json',
//       if (token != null) 'token': token,
//     };

//     var response = formData == null
//         ? await dio
//             .post(ApiConstance.updateProfileInfoEndPoint, queryParameters: {
//             'name': updateProfileParameters.name,
//             'email': updateProfileParameters.email,
//           })
//         : await dio.post(ApiConstance.updateProfileInfoEndPoint,
//             data: formData,
//             queryParameters: {
//                 'name': updateProfileParameters.name,
//                 'email': updateProfileParameters.email,
//               });

//     if (response.statusCode == 200) {
//       updateProfileStatusModel = StatusModel.fromJson(response.data['status']);
//       return AuthModel.fromJson(response.data);
//     } else {
//       throw Exception();
//     }
//   }

// //   Future<String> uploadImage(File file) async {
// //     String fileName = file.path.split('/').last;
// //     FormData formData = FormData.fromMap({
// //         "image":
// //             await MultipartFile.fromFile(file.path, filename:fileName),
// //     });
// //     response = await dio.post("/info", data: formData);
// //     return response.data;
// // }
// }
