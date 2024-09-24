part of '_index.dart';

class TryModels {
  String name;
  String id;
  String createdAt;
  int price;
  int quantity;
  String description;
  String imageUrl;
  TryModels({
    this.name = '',
    this.id = '',
    this.createdAt = '',
    this.price = 0,
    this.quantity = 0,
    this.description = '',
    this.imageUrl = '',
  });

  TryModels copyWith({
    String? name,
    String? id,
    String? createdAt,
    int? price,
    int? quantity,
    String? description,
    String? imageUrl,
  }) {
    return TryModels(
      name: name ?? this.name,
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});
    result.addAll({'id': id});
    result.addAll({'created_at': createdAt});
    result.addAll({'price': price});
    result.addAll({'quantity': quantity});
    result.addAll({'description': description});
    result.addAll({'image_url': imageUrl});

    return result;
  }

  factory TryModels.fromMap(Map<String, dynamic> map) {
    return TryModels(
      name: map['name'] ?? '',
      id: map['id'] ?? '',
      createdAt: map['created_at'] ?? '',
      price: map['price']?.toInt() ?? 0,
      quantity: map['quantity']?.toInt() ?? 0,
      description: map['description'] ?? '',
      imageUrl: map['image_url'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory TryModels.fromJson(String source) => TryModels.fromMap(json.decode(source));

  @override
  String toString() {
    return 'TryModels(name: $name, id: $id, createdAt: $createdAt, price: $price, quantity: $quantity, description: $description, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TryModels &&
        other.name == name &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.price == price &&
        other.quantity == quantity &&
        other.description == description &&
        other.imageUrl == imageUrl;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        id.hashCode ^
        createdAt.hashCode ^
        price.hashCode ^
        quantity.hashCode ^
        description.hashCode ^
        imageUrl.hashCode;
  }
}
