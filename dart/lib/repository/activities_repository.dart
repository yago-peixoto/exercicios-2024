import 'dart:convert';

import 'package:flutter/services.dart';

class ActivitiesRepository{
  Future<void> loadJson() async{
    String json = await rootBundle.loadString('assets/activities.json');
    final jsonResponse = jsonDecode(json);
    print(jsonResponse);
  }
}