import 'package:flutter/material.dart';
import 'products.dart';

class History extends StatefulWidget {

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History>{
  List<Widget> buildHistory() {
    var products = Product.products;
    List<Widget> historyWidgets = [];
    for (num i=0; i<products.length;i++){
      historyWidgets.add(
          Container(
            padding: EdgeInsets.only(top: 10, bottom:10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left:10),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/iphone.jpeg')
                    )
                  ),
                  Column(
                    children: [
                      Container(
                        child: Text('IPhone 12', 
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                              )
                        )
                      ),
                        Container(
                          padding: EdgeInsets.only(left:30),
                          child:RichText(text: TextSpan(
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
                                  TextSpan(text: '5 (23 Reviews)', 
                                          style: Theme.of(context).textTheme.bodyText1)
                                ]
                              )
                          )
                        ),
                      ]
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom:25, left:130),
                      child: Text('\$10', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        )
                      )
                    )   
                ],
              )
          )
      );
    }
    return historyWidgets;
  }
  //
  @override
  Widget build(BuildContext context){
    List<Widget> histories = buildHistory();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('History', 
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    )),
      ),
      body:Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 140),
            Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    suffixIcon: Icon(Icons.search),
                    hintText: 'Search',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, style: BorderStyle.solid)
                    )
                )
              )
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text('History', style: TextStyle(
                color: Colors.grey[700],
                fontSize: 15,
                fontWeight: FontWeight.bold
              ))
            ),
            Container(
              child: Column(
                children: histories
                // [
                //   Container(
                //     child: Row(
                //       crossAxisAlignment: CrossAxisAlignment.center,
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       children: [
                //         Container(
                //           padding: EdgeInsets.only(left:10),
                //           child: CircleAvatar(
                //             radius: 30,
                //             backgroundImage: AssetImage('assets/iphone.jpeg')
                //           )
                //         ),
                //         Column(
                //           children: [
                //             Container(
                //               child: Text('IPhone 12', 
                //                   style: TextStyle(
                //                     fontSize: 15,
                //                     fontWeight: FontWeight.bold
                //                     )
                //               )
                //             ),
                //               Container(
                //                 padding: EdgeInsets.only(left:30),
                //                 child:RichText(text: TextSpan(
                //                       style: Theme.of(context).textTheme.bodyText1,
                //                       children: [
                //                         WidgetSpan(
                //                           child: Padding(
                //                             padding: const EdgeInsets.symmetric(horizontal: 2.0),
                //                             child:  Icon(
                //                               Icons.star_rounded,
                //                               color: Colors.yellowAccent,
                //                             ),
                //                           )
                //                         ),
                //                         TextSpan(text: '5 (23 Reviews)', 
                //                                 style: Theme.of(context).textTheme.bodyText1)
                //                       ]
                //                     )
                //                 )
                //               ),
                //             ]
                //           ),
                //           Container(
                //             padding: EdgeInsets.only(bottom:25, left:130),
                //             child: Text('\$10', style: TextStyle(
                //               fontWeight: FontWeight.bold,
                //               )
                //             )
                //           )   
                //       ],
                //     )
                //   )
                // ]
              )
            )
          ]),
      )
    );
  }
}