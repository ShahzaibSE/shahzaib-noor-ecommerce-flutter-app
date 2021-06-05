import 'package:flutter/material.dart';

class History extends StatefulWidget {

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History>{
  //
  @override
  Widget build(BuildContext context){
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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
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
            )
          ]),
      )
    );
  }
}