import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';
import 'product_item.dart';

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //получаем через провайдер все продукты чтоб построить сетку
    final productsData = Provider.of<Products>(context);

    final products = productsData.items;

    return GridView.builder(
      padding: const EdgeInsets.all(10), //отступпы
      itemCount:
          products.length, //размер сетки определяем длиной списка продуктов
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, //количество столбцов
        childAspectRatio: 3 / 2, //соотношение сторон
        crossAxisSpacing: 10, //расстояние между
        mainAxisSpacing: 10,
      ),

      //передаем данные в виджета ProductItem (widgets/product_item.dart)
      itemBuilder: (ctx, i) => ProductItem(
        products[i].id,
        products[i].title,
        products[i].imageUrl,
      ),
    );
  }
}
