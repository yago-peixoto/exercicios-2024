import 'package:chuva_dart/models/localized_model.dart';

class TypeModel {
  final int id;
  final LocalizedStringModel? title;

  TypeModel({
    required this.id,
    this.title,
  });

  factory TypeModel.fromJson(Map<String, dynamic> json) => TypeModel(
        id: json['id'] ?? 0,
        title: json['title'] != null ? LocalizedStringModel.fromJson(json['title']) : null,
      );
}