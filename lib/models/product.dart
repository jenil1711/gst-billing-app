class Product {
  final String id;
  final String name;
  final double price;
  final double gstRate;
  final String category;
  final String? description;
  final DateTime createdAt;
  final DateTime updatedAt;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.gstRate,
    required this.category,
    this.description,
    required this.createdAt,
    required this.updatedAt,
  });

  // Calculate GST components
  double get cgst => (price * gstRate) / 2;
  double get sgst => (price * gstRate) / 2;
  double get totalGst => cgst + sgst;
  double get totalPrice => price + totalGst;

  // Convert to/from JSON
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'price': price,
        'gstRate': gstRate,
        'category': category,
        'description': description,
        'createdAt': createdAt.toIso8601String(),
        'updatedAt': updatedAt.toIso8601String(),
      };

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json['id'],
        name: json['name'],
        price: json['price'].toDouble(),
        gstRate: json['gstRate'].toDouble(),
        category: json['category'],
        description: json['description'],
        createdAt: DateTime.parse(json['createdAt']),
        updatedAt: DateTime.parse(json['updatedAt']),
      );
}
