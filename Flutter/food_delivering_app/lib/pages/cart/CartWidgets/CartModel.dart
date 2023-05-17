class Cart {
  late final int? id;
  late final String? productId;
  late final String? productName;
  late final String? initalPrice;
  late final String? productPrice;
  late final String? quantity;
  late final String? unitTag;
  late final String? image;

  Cart({
    required this.id,
    required this.productId,
    required this.productName,
    required this.initalPrice,
    required this.productPrice,
    required this.quantity,
    required this.unitTag,
    required this.image,
  });

  Cart.fromMap(Map<dynamic, dynamic> res)
      : id = res['id'],
        productId = res['productId'],
        productName = res['productName'],
        initalPrice = res['initalPrice'],
        productPrice = res['productPrice'],
        quantity = res['quantity'],
        unitTag = res['unitTag'],
        image = res['image'];

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'productId': productId,
      'productName': productName,
      'initalPrice': initalPrice,
      'productPrice': productPrice,
      'quantity': quantity,
      'unitTag': unitTag,
      'image': image,
    };
  }
}
