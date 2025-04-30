class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final double gstRate;
  final int stock;
  final DateTime createdAt;
  final DateTime updatedAt;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.gstRate,
    required this.stock,
    required this.createdAt,
    required this.updatedAt,
  });

  // Calculate GST components
  double get cgst => (price * gstRate) / 2;
  double get sgst => (price * gstRate) / 2;
  double get totalGst => cgst + sgst;
  double get totalPrice => price + totalGst;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'gstRate': gstRate,
      'stock': stock,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] as String,
      name: map['name'] as String,
      description: map['description'] as String,
      price: (map['price'] as num).toDouble(),
      gstRate: (map['gstRate'] as num).toDouble(),
      stock: map['stock'] as int,
      createdAt: DateTime.parse(map['createdAt'] as String),
      updatedAt: DateTime.parse(map['updatedAt'] as String),
    );
  }

  Product copyWith({
    String? id,
    String? name,
    String? description,
    double? price,
    double? gstRate,
    int? stock,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      gstRate: gstRate ?? this.gstRate,
      stock: stock ?? this.stock,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
