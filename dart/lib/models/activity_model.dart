

import 'package:chuva_dart/models/category_model.dart';
import 'package:chuva_dart/models/localized_model.dart';
import 'package:chuva_dart/models/location_model.dart';
import 'package:chuva_dart/models/person_model.dart';
import 'package:chuva_dart/models/type_model.dart';
class ActivityModel {
  final int id;
  final int changed;
  final DateTime? start;
  final DateTime? end;
  final LocalizedStringModel? title;
  final LocalizedStringModel? description;
  final CategoryModel? category;
  final List<LocationModel>? locations;
  final TypeModel? type;
  final List<dynamic>? papers;
  final List<PersonModel>? people;
  final int status;
  final int weight;
  final dynamic addons;
  final dynamic parent;
  final String? event;

  ActivityModel({
    required this.id,
    required this.changed,
    this.start,
    this.end,
    this.title,
    this.description,
    this.category,
    this.locations,
    this.type,
    this.papers,
    this.people,
    required this.status,
    required this.weight,
    this.addons,
    this.parent,
    this.event,
  });

  factory ActivityModel.fromJson(Map<String, dynamic> json) => ActivityModel(
        id: json['id'] ?? 0,
        changed: json['changed'] ?? 0,
        start: json['start'] != null ? DateTime.parse(json['start']) : null,
        end: json['end'] != null ? DateTime.parse(json['end']) : null,
        title: json['title'] != null ? LocalizedStringModel.fromJson(json['title']) : null,
        description: json['description'] != null ? LocalizedStringModel.fromJson(json['description']) : null,
        category: json['category'] != null ? CategoryModel.fromJson(json['category']) : null,
        locations: json['locations'] != null ? List<LocationModel>.from(json['locations'].map((x) => LocationModel.fromJson(x))) : null,
        type: json['type'] != null ? TypeModel.fromJson(json['type']) : null,
        papers: json['papers'] != null ? List<dynamic>.from(json['papers'].map((x) => x)) : null,
        people: json['people'] != null ? List<PersonModel>.from(json['people'].map((x) => PersonModel.fromJson(x))) : null,
        status: json['status'] ?? 0,
        weight: json['weight'] ?? 0,
        addons: json['addons'],
        parent: json['parent'],
    event: json['event'],
      );
     
}