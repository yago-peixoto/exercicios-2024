import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String cabecalho;
  final String titulo;
  final String autor;
  final Color cor;

  const CardWidget({
    super.key,
    required this.cabecalho,
    required this.titulo,
    required this.autor,
    required this.cor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Card(
            margin: EdgeInsets.zero,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 10,
                  height: MediaQuery.of(context).size.height * 0.11,
                  decoration: BoxDecoration(
                    color: cor,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      topLeft: Radius.circular(12),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          cabecalho,
                          style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          titulo,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          autor,
                          style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.bookmark, color: Colors.grey),
                ),
              ],
            ),
          )),
    );
  }
}
