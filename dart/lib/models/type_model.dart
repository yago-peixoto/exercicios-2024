import 'package:chuva_dart/models/title_model.dart';

class TypeModel {
  final int id;
  final TitleModel? title;

  TypeModel({
    required this.id,
    this.title,
  });

  factory TypeModel.fromJson(Map<String, dynamic> json) => TypeModel(
        id: json['id'] ?? 0,
        title: json['title'] != null ? TitleModel.fromJson(json['title']) : null,
      );
}