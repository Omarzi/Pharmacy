  
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';

// abstract class ExploreBaseRemoteDataSource {
//   Future<DataModel> getHotelDataSource({
//     String? base,
//     String? endPoint,
//     dynamic data,
//     dynamic query,
//     required HotelParameters hotelParameters,
//     String? token,
//     CancelToken? cancelToken,
//     int? timeOut,
//     bool isMultipart = false,
//   });
// }

// class ExploreRemoteDataSource extends ExploreBaseRemoteDataSource {
//   @override
//   Future<DataModel> getHotelDataSource(
//       {String? base,
//       String? endPoint,
//       data,
//       query,
//       required HotelParameters hotelParameters,
//       String? token,
//       CancelToken? cancelToken,
//       int? timeOut,
//       bool isMultipart = false}) async {
//     if (timeOut != null) {
//       dio.options.connectTimeout = timeOut;
//     }

//     dio.options.headers = {
//       if (isMultipart) 'Content-Type': 'multipart/form-data',
//       if (!isMultipart) 'Content-Type': 'application/json',
//       if (!isMultipart) 'Accept': 'application/json',
//       if (token != null) 'token': token,
//     };

//     // debugPrint('URL => ${dio.options.baseUrl + endPoint!}');
//     debugPrint('Header => ${dio.options.headers.toString()}');
//     debugPrint('Body => $data');
//     debugPrint('Query => $query');

//     var response = await dio.get(
//       ApiConstance.getHotelsEndPoint,
//       queryParameters: {
//         'count': hotelParameters.count,
//       },
//     );
//     if (response.data['status']['type'] == '1' && response.statusCode == 200) {
//       print(response);
//       return DataModel.fromJson(response.data['data']);
//     } else {
//       throw Exception();
//     }
//   }
// }
