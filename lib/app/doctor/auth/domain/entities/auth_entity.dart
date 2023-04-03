import 'package:equatable/equatable.dart';

class Auth extends Equatable {
  final int id;
  final String name;
  final String apiToken;
  final String email;
  final String? image;

  const Auth({
    required this.id,
    required this.name,
    required this.apiToken,
    required this.email,
    this.image='image',
  });

  @override
  List<Object?> get props {
    return [
      id,
      name,
      apiToken,
      email,
      image,
    ];
  }
}
