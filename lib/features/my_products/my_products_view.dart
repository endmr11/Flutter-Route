import 'package:flutter/material.dart';

import 'my_products_view_model.dart';

class MyProductsView extends MyProductsViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          children: [
            Text("${widget.products.productId}"),
            Text("${widget.products.productName}"),
            Text("${widget.products.productDesc}"),
            Text("${widget.products.productPrice}"),
            Text("${widget.products.productUrl}"),
            ElevatedButton(
              onPressed: () {
                widget.callbackFn.call();
              },
              child: const Text("Increment"),
            ),
          ],
        ),
      ),
    );
  }
}
