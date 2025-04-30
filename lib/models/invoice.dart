class InvoiceItem {
  final String productId;
  final String productName;
  final int quantity;
  final double price;
  final double gstRate;
  final double cgst;
  final double sgst;
  final double total;

  InvoiceItem({
    required this.productId,
    required this.productName,
    required this.quantity,
    required this.price,
    required this.gstRate,
    required this.cgst,
    required this.sgst,
    required this.total,
  });

  Map<String, dynamic> toJson() => {
        'productId': productId,
        'productName': productName,
        'quantity': quantity,
        'price': price,
        'gstRate': gstRate,
        'cgst': cgst,
        'sgst': sgst,
        'total': total,
      };

  factory InvoiceItem.fromJson(Map<String, dynamic> json) => InvoiceItem(
        productId: json['productId'],
        productName: json['productName'],
        quantity: json['quantity'],
        price: json['price'].toDouble(),
        gstRate: json['gstRate'].toDouble(),
        cgst: json['cgst'].toDouble(),
        sgst: json['sgst'].toDouble(),
        total: json['total'].toDouble(),
      );
}

class Invoice {
  final String id;
  final String invoiceNumber;
  final DateTime date;
  final List<InvoiceItem> items;
  final double subtotal;
  final double totalCgst;
  final double totalSgst;
  final double totalAmount;
  final String? customerName;
  final String? customerPhone;
  final String? customerEmail;

  Invoice({
    required this.id,
    required this.invoiceNumber,
    required this.date,
    required this.items,
    required this.subtotal,
    required this.totalCgst,
    required this.totalSgst,
    required this.totalAmount,
    this.customerName,
    this.customerPhone,
    this.customerEmail,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'invoiceNumber': invoiceNumber,
        'date': date.toIso8601String(),
        'items': items.map((item) => item.toJson()).toList(),
        'subtotal': subtotal,
        'totalCgst': totalCgst,
        'totalSgst': totalSgst,
        'totalAmount': totalAmount,
        'customerName': customerName,
        'customerPhone': customerPhone,
        'customerEmail': customerEmail,
      };

  factory Invoice.fromJson(Map<String, dynamic> json) => Invoice(
        id: json['id'],
        invoiceNumber: json['invoiceNumber'],
        date: DateTime.parse(json['date']),
        items: (json['items'] as List)
            .map((item) => InvoiceItem.fromJson(item))
            .toList(),
        subtotal: json['subtotal'].toDouble(),
        totalCgst: json['totalCgst'].toDouble(),
        totalSgst: json['totalSgst'].toDouble(),
        totalAmount: json['totalAmount'].toDouble(),
        customerName: json['customerName'],
        customerPhone: json['customerPhone'],
        customerEmail: json['customerEmail'],
      );
}
