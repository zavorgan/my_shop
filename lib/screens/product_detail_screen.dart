import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String title;

  // const ProductDetailScreen(this.title);
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments
        as String; //получаем аргументы которые передали из продукт-итема

    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
    );
  }
}
