
import 'package:chuva_dart/models/activity_model.dart';
import 'package:chuva_dart/models/links_model.dart';

class DataModel {
  int count;
 LinksModel linksModel;
  List<ActivityModel> data;

  DataModel({
    required this.count,
    required this.linksModel,
    required this.data,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      count: json['count'],
      linksModel: LinksModel.fromJson(json['links']),
      data: List<ActivityModel>.from(json['data'].map((e)=>ActivityModel.fromJson(e))),
    );
  }
}