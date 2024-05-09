import 'package:chuva_dart/models/localized_model.dart';

class LocationModel {
  final int id;
  final LocalizedStringModel? title;
  final int? parent;
  final dynamic map;

  LocationModel({
    required this.id,
    this.title,
    this.parent,
    this.map,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) => LocationModel(
        id: json['id'] ?? 0,
        title: json['title'] != null ? LocalizedStringModel.fromJson(json['title']) : null,
        parent: json['parent'] ?? 0,
        map: json['map'],
      );
}