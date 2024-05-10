import 'dart:convert';


import 'package:chuva_dart/models/data_model.dart';
import 'package:dio/dio.dart';

class ActivitiesRepository {
  
  Future<DataModel> loadJson() async { 
    Dio dio = Dio();
    Response response = await dio.get(
        'https://raw.githubusercontent.com/chuva-inc/exercicios-2023/master/dart/assets/activities.json');
        
   
   final  dataModel = DataModel.fromJson(jsonDecode(response.data));
   
  return dataModel;
  }
}
