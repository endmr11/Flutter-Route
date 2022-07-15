import 'package:flutter/material.dart';
import 'package:flutter_generate_route/features/my_products/my_products.dart';

import 'home_view_model.dart';

class HomeView extends HomeViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyProducts.routeName, arguments: {"product": product, "callBack": callBackFn});
              },
              child: const Text("My Products"),
            ),
            Text("$count"),
          ],
        ),
      ),
    );
  }
}
