import 'title_model.dart';

class RoleModel {
  final int id;
  final TitleModel? label;

  RoleModel({
    required this.id,
    this.label,
  });

  factory RoleModel.fromJson(Map<String, dynamic> json) => RoleModel(
        id: json['id'] ?? 0,
        label: json['label'] != null ? TitleModel.fromJson(json['label']) : null,
      );
}
