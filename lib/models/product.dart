class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final String image;
  final double rating;
  final String category;
  final bool isAvailable;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.rating,
    required this.category,
    this.isAvailable = true,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'image': image,
      'rating': rating,
      'category': category,
      'isAvailable': isAvailable,
    };
  }

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'].toDouble(),
      image: json['image'],
      rating: json['rating'].toDouble(),
      category: json['category'],
      isAvailable: json['isAvailable'] ?? true,
    );
  }
}
