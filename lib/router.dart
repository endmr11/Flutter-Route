import 'package:flutter/material.dart';
import 'package:flutter_generate_route/features/my_products/my_products.dart';

import 'features/home/home.dart';
import 'models/product_model.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case Home.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Home(),
      );
    case MyProducts.routeName:
      var arg = routeSettings.arguments as Map;
      var products = (arg['product'] ?? ProductModel()) as ProductModel;
      var callBack = arg['callBack'] as Function;
      return PageRouteBuilder(
        settings: routeSettings,
        pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) =>
            MyProducts(products: products, callbackFn: callBack),
        transitionsBuilder: (context, opacity, _, widget) => FadeTransition(
          opacity: opacity,
          child: widget,
        ),
      );
    // return MaterialPageRoute(
    //   settings: routeSettings,
    //   builder: (_) => MyProducts(
    //     products: products,
    //   ),
    // );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Ekran bulunmamaktadır!'),
          ),
        ),
      );
  }
}
