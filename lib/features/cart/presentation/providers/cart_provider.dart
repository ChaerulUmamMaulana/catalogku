import 'package:catalogku/features/cart/domain/entities/product.dart';
import 'package:catalogku/features/cart/domain/entities/repositories/cart_repository.dart';
import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  final CartRepository _repository;
  // Dependency Injection melalui constructor
  CartProvider({required CartRepository repository}) : _repository = repository;
  List<Product> get items => _repository.getCartItems();
  void addItem(Product product) {
    _repository.addItem(product);
    notifyListeners();
  }

  void removeAll() {
    _repository.removeAllItems();
    notifyListeners();
  }

  bool isInCart(String productId) => _repository.isItemInCart(productId);
}
