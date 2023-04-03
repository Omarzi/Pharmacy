
// import 'package:dartz/dartz.dart';

// import '../../domain/entities/hotel.dart';

// class ExploreRepository extends ExploreBaseRepository {
//   final HotelBaseRemoteDataSource baseRemoteDataSource;

//   ExploreRepository(this.baseRemoteDataSource);
//   @override
//   Future<Either<dynamic, Data>> getHotels(
//       {required HotelParameters parameters}) async {
//     try {
//       var response = await baseRemoteDataSource.getHotelDataSource(
//           hotelParameters: parameters);
//       return Right(response);
//     } catch (e) {
//       return Left(NetworkExceptions.getDioException(e));
//     }
//   }
// }
