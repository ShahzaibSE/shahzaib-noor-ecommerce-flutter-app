import 'package:flutter/material.dart';
import 'products.dart';

class ProductList extends StatefulWidget {
  ProductList({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList>{

  Widget buildProductCard(Product product){
    return Card(
      child: Column(

      )
    );
  }
  //
  @override
  Widget build(BuildContext context){
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}