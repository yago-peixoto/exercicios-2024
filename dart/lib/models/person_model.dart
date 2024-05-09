import 'package:chuva_dart/models/localized_model.dart';
import 'package:chuva_dart/models/role_model.dart';
class PersonModel {
  final int id;
  final String? title;
  final String? name;
  final String? institution;
  final LocalizedStringModel? bio;
  final String? picture;
  final int? weight;
  final RoleModel? role;
  final String? hash;

  PersonModel({
    required this.id,
    this.title,
    this.name,
    this.institution,
    this.bio,
    this.picture,
    this.weight,
    this.role,
    this.hash,
  });

  factory PersonModel.fromJson(Map<String, dynamic> json) => PersonModel(
        id: json['id'] ?? 0,
        title: json['title'],
        name: json['name'],
        institution: json['institution'],
        bio: json['bio'] != null ? LocalizedStringModel.fromJson(json['bio']) : null,
        picture: json['picture'],
        weight: json['weight'] ?? 0,
        role: json['role'] != null ? RoleModel.fromJson(json['role']) : null,
        hash: json['hash'],
      );
}