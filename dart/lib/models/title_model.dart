class TitleModel {
  final String ptBr;


   TitleModel({required this.ptBr});

  factory TitleModel.fromJson(Map<String, dynamic> json) => TitleModel(
        ptBr: json['pt-br'],
      );

}