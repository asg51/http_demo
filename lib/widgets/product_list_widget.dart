import 'package:flutter/material.dart';
import 'package:http_demo/models/product.dart';
import 'package:http_demo/widgets/product_list_row_widget.dart';

class ProductListWidget extends StatefulWidget {
  List<Product> products;

  ProductListWidget(this.products);

  @override
  State<StatefulWidget> createState() {
    return ProductListWidgetState();
  }
}

class ProductListWidgetState extends State<ProductListWidget> {
  @override
  Widget build(BuildContext context) {
    return buildProductList(context);
  }

  Widget buildProductList(BuildContext context) {
    return Expanded(child: Padding(
      padding: const EdgeInsets.only(top: 4),
      child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          widget.products.length,
              (index) {
            return Card(child: ProductListRowWidget(widget.products[index]),);
          },
        ),
      ),
    ));
  }
}
