import 'package:flutter/material.dart';

import '../../models/product_model.dart';
import 'my_products_view.dart';

class MyProducts extends StatefulWidget {
  static const String routeName = '/my-products';
  final ProductModel products;
  final Function callbackFn; 
  const MyProducts({required this.products, required this.callbackFn, Key? key}) : super(key: key);

  @override
  MyProductsView createState() => MyProductsView();
}
