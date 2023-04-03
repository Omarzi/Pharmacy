import 'package:equatable/equatable.dart';

class StatusModel extends Equatable {
  final String type;
  final String messageAr;
  final String messageEn;

  const StatusModel({
    required this.type,
    required this.messageAr,
    required this.messageEn,
  });

  factory StatusModel.fromJson(Map<String, dynamic> json) {
    return StatusModel(
      type: json['type'] ?? '0',
      messageAr:
          json['title'] != null ? json['title']['ar'] ?? 'empty' : 'empty',
      messageEn:
          json['title'] != null ? json['title']['en'] ?? 'empty' : 'empty',
    );
  }

  @override
  List<Object> get props => [type, messageAr, messageEn];
}

class StatusProfileInfo extends Equatable {
  final String type;
  final String message;

  const StatusProfileInfo({required this.type, required this.message});

  factory StatusProfileInfo.fromJson(Map<String, dynamic> json) {
    return StatusProfileInfo(
      type: json['type'] ?? '0',
      message: json['title'] != null ? json['title'] ?? 'empty' : 'empty',
    );
  }

  @override
  List<Object?> get props => [type, message];
}
