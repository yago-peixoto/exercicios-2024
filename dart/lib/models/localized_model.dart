class LocalizedStringModel {
  final String? ptBr;

  LocalizedStringModel({this.ptBr});

  factory LocalizedStringModel.fromJson(Map<String, dynamic> json) => LocalizedStringModel(
        ptBr: json['pt-br'],
      );
}