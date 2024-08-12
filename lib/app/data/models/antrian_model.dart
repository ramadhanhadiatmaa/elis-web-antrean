class AntrianModel {
  String ant;

  AntrianModel({
    required this.ant,
  });

  factory AntrianModel.fromJson(Map<String, dynamic> json) => AntrianModel(
        ant: json["ant"],
      );

  Map<String, dynamic> toJson() => {
        "ant": ant,
      };
}
