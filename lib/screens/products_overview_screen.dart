import 'package:flutter/material.dart';

import '../widgets/produts_grid.dart';

class ProductsOverviewScreen extends StatelessWidget {
  const ProductsOverviewScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shop'),
        centerTitle: true,
      ),
      //исользуем сетку ддля отображения продуктов
      body: ProductsGrid(),
    );
  }
}
