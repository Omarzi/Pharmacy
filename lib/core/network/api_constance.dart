import 'package:dio/dio.dart';

// StatusModel? statusModel;
// StatusModel? registerstatusModel;
// StatusProfileInfo? statusProfileInfo;
// StatusModel? updateProfileStatusModel;
String? token;

class ApiConstance {
  static const String baseUrl = 'http://yasserbusati-001-site1.ctempurl.com';
  static const String pharmacyEndPoint = '/api/Pharmacy';
  static const String loginEndPoint = '/auth/login?';
  static const String changePasswordEndPoint = '/auth/pass-change?';
  static const String getProfileInfoEndPoint = '/auth/profile-info';
  static const String updateProfileInfoEndPoint = '/auth/update-info';
  static const String getHotelsEndPoint = '/hotels?';
  static const String createBookingEndPoint = '/create-booking';
  static const String updateBookingStatusEndPoint = '/update-booking-status?';
  static const String getBookingEndPoint = '/get-bookings?';
  static const String getFacilitiesEndPoint = '/facilities';
  static const String searchEndPoint = '/search-hotels?';

  // static String searchHotelPath(SearchParameters parameters) =>
  //     '$baseUrl/search-hotels?name=${parameters.name}';
}

final Dio dio = Dio(
  BaseOptions(
    baseUrl: ApiConstance.baseUrl,
    receiveDataWhenStatusError: true,
    connectTimeout: 5000,
  ),
);
