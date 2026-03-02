import 'package:catalogku/features/cart/domain/entities/product.dart';
import 'package:catalogku/features/cart/domain/entities/repositories/cart_repository.dart';

class CartRepositoryImpl implements CartRepository {
  final List<Product> _items = [];
  @override
  List<Product> getCartItems() => List.unmodifiable(_items);
  @override
  void addItem(Product product) => _items.add(product);
  @override
  @override
  bool isItemInCart(String productId) => _items.any((p) => p.id == productId);
  
  @override
  void removeAllItems() {
    
  }
}
