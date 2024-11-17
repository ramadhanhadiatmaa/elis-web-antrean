import 'dart:convert';

List<KamarModel> kamarModelFromJson(String str) => List<KamarModel>.from(json.decode(str).map((x) => KamarModel.fromJson(x)));

String kamarModelToJson(List<KamarModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class KamarModel {
    String id;
    String bangsal;
    String jenis;
    String total;
    String isi;

    KamarModel({
        required this.id,
        required this.bangsal,
        required this.jenis,
        required this.total,
        required this.isi,
    });

    factory KamarModel.fromJson(Map<String, dynamic> json) => KamarModel(
        id: json["id"],
        bangsal: json["bangsal"],
        jenis: json["jenis"],
        total: json["total"],
        isi: json["isi"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "bangsal": bangsal,
        "jenis": jenis,
        "total": total,
        "isi": isi,
    };
}
