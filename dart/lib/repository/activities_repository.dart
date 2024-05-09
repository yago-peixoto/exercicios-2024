import 'dart:convert';


import 'package:chuva_dart/models/activity_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ActivitiesRepository  {
  ActivitiesRepository() {
    loadJson();
  }

 ValueNotifier<ActivityModel?> activityModel = ValueNotifier(null);

  Future<void> loadJson() async {
    String json = await rootBundle.loadString('assets/activities.json');
    final jsonResponse = jsonDecode(json);

    activityModel.value = ActivityModel.fromJson(jsonResponse);

  }
}
