import '../models/product.dart';

class ProductService {
  static final List<Product> _products = [
    Product(
      id: '1',
      name: 'Roti Sobek Coklat',
      description: 'Roti lembut dengan isian coklat yang melimpah, cocok untuk sarapan atau camilan.',
      price: 25000,
      image: '🍞',
      rating: 4.8,
      category: 'Roti Manis',
    ),
    Product(
      id: '2',
      name: 'Croissant Butter',
      description: 'Croissant renyah dengan butter premium, dibuat dengan teknik tradisional Prancis.',
      price: 15000,
      image: '🥐',
      rating: 4.9,
      category: 'Roti Manis',
    ),
    Product(
      id: '3',
      name: 'Donat Glaze',
      description: 'Donat empuk dengan lapisan glaze manis yang menggoda selera.',
      price: 8000,
      image: '🍩',
      rating: 4.7,
      category: 'Roti Manis',
    ),
    Product(
      id: '4',
      name: 'Roti Keju',
      description: 'Roti tawar dengan topping keju mozzarella yang melted sempurna.',
      price: 12000,
      image: '🧀',
      rating: 4.6,
      category: 'Roti Isi',
    ),
    Product(
      id: '5',
      name: 'Roti Tawar Gandum',
      description: 'Roti tawar sehat dari gandum utuh, kaya serat dan nutrisi.',
      price: 18000,
      image: '🍞',
      rating: 4.5,
      category: 'Roti Tawar',
    ),
    Product(
      id: '6',
      name: 'Kue Nastar',
      description: 'Kue kering tradisional dengan isian nanas segar dan tekstur yang renyah.',
      price: 35000,
      image: '🥧',
      rating: 4.8,
      category: 'Kue Kering',
    ),
    Product(
      id: '7',
      name: 'Roti Pisang Coklat',
      description: 'Roti manis dengan isian pisang dan coklat chip yang lezat.',
      price: 20000,
      image: '🍌',
      rating: 4.7,
      category: 'Roti Isi',
    ),
    Product(
      id: '8',
      name: 'Kastengel',
      description: 'Kue kering keju dengan tekstur renyah dan rasa gurih yang khas.',
      price: 40000,
      image: '🧀',
      rating: 4.9,
      category: 'Kue Kering',
    ),
  ];

  static List<Product> getAllProducts() {
    return List.unmodifiable(_products);
  }

  static List<Product> getProductsByCategory(String category) {
    return _products.where((product) => product.category == category).toList();
  }

  static Product? getProductById(String id) {
    try {
      return _products.firstWhere((product) => product.id == id);
    } catch (e) {
      return null;
    }
  }

  static List<String> getCategories() {
    return _products.map((product) => product.category).toSet().toList();
  }
}
