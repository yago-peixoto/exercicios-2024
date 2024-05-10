class LinksModel {
  String self;
  String next;

  LinksModel({
    required this.self,
    required this.next,
  });

  factory LinksModel.fromJson(Map<String, dynamic> json) {
    return LinksModel(
      self: json['self'] ?? '',
      next: json['next'] ?? '',
    );
  }
}
