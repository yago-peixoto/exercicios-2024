import 'package:chuva_dart/models/localized_model.dart';

class CategoryModel {
  final int id;
  final LocalizedStringModel? title;
  final String? color;
  final String? backgroundColor;

  CategoryModel({
    required this.id,
    this.title,
    this.color,
    this.backgroundColor,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        id: json['id'] ?? 0,
        title: json['title'] != null ? LocalizedStringModel.fromJson(json['title']) : null,
        color: json['color'] ?? '#FFFFFF',
        backgroundColor: json['background-color'] ?? '#FFFFFF',
      );
}