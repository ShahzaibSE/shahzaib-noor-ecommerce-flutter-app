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
        child: Text('History'),
      )
    );
  }
}