import 'package:chuva_dart/models/data_model.dart';
import 'package:chuva_dart/models/links_model.dart';
import 'package:chuva_dart/repository/activities_repository.dart';
import 'package:flutter/material.dart';

class DataController with ChangeNotifier {
     ActivitiesRepository activitiesRepository = ActivitiesRepository();
  var dataModel =
      DataModel(count: 0, linksModel: LinksModel(self: '', next: ''), data: []);

      void  getData  () async {
     
        dataModel = await activitiesRepository.loadJson();
        notifyListeners();
      }
}
