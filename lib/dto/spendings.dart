class Spendings {
  final int id_spending;
  final String nim;
  final int spending;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? deletedAt;

  Spendings({
    // ignore: non_constant_identifier_names
    required this.id_spending,
    required this.nim,
    required this.spending,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });

  factory Spendings.fromJson(Map<String, dynamic> json) {
    return Spendings(
      id_spending: json['id_spending'] as int,
      nim: json['nim'] as String,
      spending: json['spending'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] != null
          ? DateTime.parse(json['deleted_at'] as String)
          : null,
    );
  }
}