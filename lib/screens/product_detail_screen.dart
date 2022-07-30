import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String title;

  // const ProductDetailScreen(this.title);
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments
        as String; //получаем аргументы которые передали из продукт-итема

    //Получаем через провайдер весь список товаров,
    //и срвнивниваем с полученным из мейн(productId)
    //и выбираем полный список значений по ID
    //будет List
    // final loadedProduct = Provider.of<Products>(context)
    //     .items
    //     .firstWhere((prod) => prod.id == productId);

    //после ^^^ (смотреть вверх что было)рефатора функцию перенесли  в provider/provider.dart
    // и сделали функцию там findById

    final loadedProduct = Provider.of<Products>(
      context,
      listen: false,
    ).findById(productId);

    return Scaffold(
      appBar: AppBar(
        //принимаем из переменной (листа) значение
        title: Text(loadedProduct.title),
      ),
    );
  }
}
