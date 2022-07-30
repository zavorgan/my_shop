import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../providers/products.dart';
import '../widgets/produts_grid.dart';

enum FilterOptions {
  Favorites,
  All,
}

class ProductsOverviewScreen extends StatefulWidget {
  const ProductsOverviewScreen({Key key}) : super(key: key);

  @override
  State<ProductsOverviewScreen> createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  var _showOnlyFavorites = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shop'),
        centerTitle: true,
        actions: <Widget>[
          //всплывающее меню
          PopupMenuButton(
            //функция которая определяет наш выбор
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if (selectedValue == FilterOptions.Favorites) {
                  _showOnlyFavorites = true;
                } else {
                  _showOnlyFavorites = false;
                }
              });
            },
            icon: Icon(Icons.more_vert),
            itemBuilder: (_) => [
              //значения для выбора во всплывающем меню
              PopupMenuItem(
                child: Text('Избранное'),
                value: FilterOptions.Favorites,
              ),
              PopupMenuItem(
                child: Text('Все товары'),
                value: FilterOptions.All,
              ),
            ],
          )
        ],
      ),
      //исользуем сетку ддля отображения продуктов
      body: ProductsGrid(_showOnlyFavorites),
    );
  }
}
