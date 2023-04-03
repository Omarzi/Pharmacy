// import '../../domain/entities/pharmacy_data.dart';

// class PharmacyDataModel extends HotelDataEntities {
//   const PharmacyDataModel({
//     required super.id,
//     required super.name,
//     required super.areaId,
//     required super.block,
//     required super.created,
//     required super.email,
//     required super.lastModified,
//     required super.licenceId,
//     required super.localityId,
//     required super.mobile,
//     required super.phone,
//     required super.street,
//   });

//   factory PharmacyDataModel.fromJson(Map<String, dynamic> json) {
//     return PharmacyDataModel(
//       id: json['id'],
//       name: json['name'],
//       description: json['description'],
//       price: json['price'],
//       address: json['address'],
//       latitude: json['latitude'],
//       longitude: json['longitude'],
//       rate: json['rate'],
//       images: List<String>.from(
//           (json['hotel_images'] as List).map((x) => x['image'])),
//       created_at: json['created_at'],
//       updated_at: json['updated_at'],
//     );
//   }
// }
