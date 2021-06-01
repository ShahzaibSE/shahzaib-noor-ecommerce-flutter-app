import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {
  ProductList({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList>{
  //
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}