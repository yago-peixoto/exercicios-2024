
import 'package:chuva_dart/repository/activities_repository.dart';
import 'package:flutter/material.dart';

class Teste extends StatefulWidget {
  const Teste({super.key});

  @override
  State<Teste> createState() => _TesteState();
}


class _TesteState extends State<Teste> {
  ActivitiesRepository activitiesRepository = ActivitiesRepository();
  List<dynamic> activities = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    activitiesRepository.loadJson();
  }
  @override
  Widget build(BuildContext context) {

    return const Placeholder();
  }
}