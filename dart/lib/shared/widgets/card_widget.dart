import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
  
        width: MediaQuery.of(context).size.width,
       child: Card(
        margin: EdgeInsets.zero,
        color: Colors.amber,
         child: Column(
          children: [
            Text('primeira linha'),
            Text('segunda linha'),
            Text('terceira linha'),
          ],
         ),
       )
       ),
    );
    
  }
}