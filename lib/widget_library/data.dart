part of 'domains/_index.dart';

final dt = DataPengunjung();

class DataPengunjung {
  final rxform = RM.injectForm(
    submit: () async => await ct.createname(),
    autovalidateMode: AutovalidateMode.onUserInteraction,
  );

  final rxname = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.fullName,
    ],
  );
  final String namaadmin = "dheasa123";
  // String password = "";
}

class DataNama {
  final String name;
  final String createdAt;
  final String id;
  DataNama({
    this.name = '',
    this.createdAt = '',
    this.id = '',
  });

  DataNama copyWith({
    String? name,
    String? createdAt,
    String? id,
  }) {
    return DataNama(
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});
    result.addAll({'created_at': createdAt});
    result.addAll({'id': id});

    return result;
  }

  factory DataNama.fromMap(Map<String, dynamic> map) {
    return DataNama(
      name: map['name'] ?? '',
      createdAt: map['created_at'] ?? '',
      id: map['id'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory DataNama.fromJson(String source) => DataNama.fromMap(json.decode(source));

  @override
  String toString() => 'DataNama(name: $name, createdAt: $createdAt, id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DataNama && other.name == name && other.createdAt == createdAt && other.id == id;
  }

  @override
  int get hashCode => name.hashCode ^ createdAt.hashCode ^ id.hashCode;
}
