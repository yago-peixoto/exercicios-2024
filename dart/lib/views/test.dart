import 'package:chuva_dart/shared/widgets/card_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Teste extends StatelessWidget {
  const Teste({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const Scaffold(
        body: Column(
          children: [CardWidget()],
        ),
      ),
    );
  }
}