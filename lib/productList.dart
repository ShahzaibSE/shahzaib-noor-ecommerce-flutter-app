import 'package:flutter/material.dart';
import 'products.dart';

class ProductList extends StatefulWidget {
  // ProductList({Key? key, required this.title}) : super(key: key);

  // final String title;

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList>{

  Widget buildProductCard(Product product){
    var numberOfReviews = product.numberOfReviews;
    var rating = product.rating;
    var stock = product.stock;
    var price = '\$'+product.price;
    var quantity = product.quantity;
    //
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Container(
                padding: const EdgeInsets.all(10),
                width: 150,
                height: 150,
                child:Image(image: AssetImage(product.imageUrl)),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  product.productName, 
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                    )
                )
              ),
              RichText(text: TextSpan(
                  style: Theme.of(context).textTheme.bodyText1,
                  children: [
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        child:  Icon(
                          Icons.star_rounded,
                          color: Colors.yellowAccent,
                        ),
                      )
                    ),
                    TextSpan(text: '$rating ($numberOfReviews Reviews)', style: Theme.of(context).textTheme.bodyText1)
                  ]
                )
              ),
              // RichText(text: TextSpan(
              //     style: Theme.of(context).textTheme.bodyText1,
              //     children: [
              //       TextSpan(text: quantity),
              //       TextSpan(
              //         text: price,
              //         style: TextStyle(
              //           fontSize: 25,
              //           fontWeight: FontWeight.bold,
              //           color: Colors.purpleAccent,
              //         )
              //       )
              //     ]
              //   )
              // )
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child:Text('$stock Pieces'), 
                    padding: const EdgeInsets.all(10)),
                  Container(
                    child:  Text(price, style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.purpleAccent
                            ))
                  )
                ]
              ),
              Container(
                padding: EdgeInsets.only(left: 8),
                child: Text('Quantity: $quantity')
              )
            ],
          )
        ],
      )
    );
  }
  //
  @override
  Widget build(BuildContext context){
    return Container(
        child: ListView.builder(
          itemCount: Product.products.length,
          itemBuilder: (BuildContext context, int index) {
            return buildProductCard(Product.products[index]);
          },
      ),
    );
  }
}