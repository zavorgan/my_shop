import 'package:flutter/material.dart';

import 'product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl: 'http://shop.neru14.ru/images/red-shirt.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl: 'http://shop.neru14.ru/images/trousers.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl: 'http://shop.neru14.ru/images/yellow-scarf.jpg',
    ),
    Product(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl: 'http://shop.neru14.ru/images/pan.png',
    ),
  ];

  // var _showFavoritesOnly = false;

  List<Product> get items {
    // if (_showFavoritesOnly) {
    //   return _items.where((prodItem) => prodItem.isFavorite).toList();
    // }
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  List<Product> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }
//функция показа только избранного товара
  // void showFavoritesOnly() {
  //   _showFavoritesOnly = true;
  //   notifyListeners();//обязательно вызывать если чтото меняем
  // }

//функция показа всех товаров

  // void showAll() {
  //   _showFavoritesOnly = false;
  //   notifyListeners();//обязательно вызывать если чтото меняем
  // }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}
