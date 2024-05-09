import 'localized_model.dart';

class RoleModel {
  final int id;
  final LocalizedStringModel? label;

  RoleModel({
    required this.id,
    this.label,
  });

  factory RoleModel.fromJson(Map<String, dynamic> json) => RoleModel(
        id: json['id'] ?? 0,
        label: json['label'] != null ? LocalizedStringModel.fromJson(json['label']) : null,
      );
}
