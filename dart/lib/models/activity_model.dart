import 'package:chuva_dart/models/title_model.dart';

class ActivityModel {
  final String start;
  final String end;
  final TitleModel titleModel;


  ActivityModel({
    required this.start,
    required this.end,
    required this.titleModel,
  });

  factory ActivityModel.fromJson(Map<String, dynamic> json) => ActivityModel(
       start: json['start'] ?? '',
        end: json['end'] ?? '',
        titleModel: TitleModel.fromJson(json['title'] ?? ''),
      );
}
