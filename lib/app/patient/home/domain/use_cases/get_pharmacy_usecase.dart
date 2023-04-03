// import 'package:dartz/dartz.dart';
// import 'package:equatable/equatable.dart';

// import '../../../../core/base_usecase/base_usecase.dart';
// import '../base_repository/pharmacy_base_repository.dart';
// import '../entities/hotel.dart';
// import '../entities/pharmacy_data.dart';

// class GetParmacyUseCase extends BaseUseCase<HotelDataEntities, PharmacyParameters> {
//   final ParmacyBaseRepository baseRepository;

//   GetParmacyUseCase({required this.baseRepository});

//   @override
//   Future<Either<dynamic, HotelDataEntities>> call(PharmacyParameters parameters) async {
//     return await baseRepository.getPharmacy(parameters: parameters);
//   }
// }

// class PharmacyParameters extends Equatable {
//   final int? count;

//   const PharmacyParameters({
//     this.count,
//   });

//   @override
//   List<Object?> get props => [
//         count,
//       ];
// }
