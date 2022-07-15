import 'package:flutter_generate_route/models/product_model.dart';

mixin HomeResources {
  final String title = 'Home';
  final product = ProductModel(productId: 1, productDesc: "Açıklama", productName: "Ürün Adı", productPrice: 100, productUrl: "https:example.com");
  int count = 0;
}
