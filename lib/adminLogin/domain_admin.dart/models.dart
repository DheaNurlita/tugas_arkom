import 'dart:convert';

class Product {
  String name;
  String description;
  String id;
  String createdAt;
  String image;
  Product({
    this.name = '',
    this.description = '',
    this.id = '',
    this.createdAt = '',
    this.image = '',
  });

  Product copyWith({
    String? name,
    String? description,
    String? id,
    String? createdAt,
    String? image,
  }) {
    return Product(
      name: name ?? this.name,
      description: description ?? this.description,
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});
    result.addAll({'description': description});
    result.addAll({'id': id});
    result.addAll({'created_at': createdAt});
    result.addAll({'image': image});

    return result;
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      id: map['id'] ?? '',
      createdAt: map['created_at'] ?? '',
      image: map['image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Product(name: $name, description: $description, id: $id, createdAt: $createdAt, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Product &&
        other.name == name &&
        other.description == description &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.image == image;
  }

  @override
  int get hashCode {
    return name.hashCode ^ description.hashCode ^ id.hashCode ^ createdAt.hashCode ^ image.hashCode;
  }
}
// / class Product {
//   String name;
//   String description;
//   String id;
//   String createdAt;
//   Product({
//     this.name = '',
//     this.description = '',
//     this.id = '',
//     this.createdAt = '',
//   });

//   Product copyWith({
//     String? name,
//     String? description,
//     String? id,
//     String? createdAt,
//   }) {
//     return Product(
//       name: name ?? this.name,
//       description: description ?? this.description,
//       id: id ?? this.id,
//       createdAt: createdAt ?? this.createdAt,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     final result = <String, dynamic>{};

//     result.addAll({'name': name});
//     result.addAll({'description': description});
//     result.addAll({'id': id});
//     result.addAll({'created_at': createdAt});

//     return result;
//   }

//   factory Product.fromMap(Map<String, dynamic> map) {
//     return Product(
//       name: map['name'] ?? '',
//       description: map['description'] ?? '',
//       id: map['id'] ?? '',
//       createdAt: map['created_at'] ?? '',
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Product.fromJson(String source) => Product.fromMap(json.decode(source));

//   @override
//   String toString() {
//     return 'Product(name: $name, description: $description, id: $id, createdAt: $createdAt)';
//   }

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;

//     return other is Product &&
//         other.name == name &&
//         other.description == description &&
//         other.id == id &&
//         other.createdAt == createdAt;
//   }

//   @override
//   int get hashCode {
//     return name.hashCode ^ description.hashCode ^ id.hashCode ^ createdAt.hashCode;
//   }
// }
