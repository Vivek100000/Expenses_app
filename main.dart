import 'package:flutter/material.dart';

//import './Transaction/transaction_list.dart';
//import './Transaction/new_transaction.dart';
import './Transaction/user_transactions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EXPENSES_APP',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  //String t_input, amt_input;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'EXPENSES_APP',
          textAlign: TextAlign.end,
          style: TextStyle(
              color: Colors.white, fontSize: 32, fontStyle: FontStyle.italic),
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            usertransaction(),
          ]

          /*Card(
              child: Container(
                  width: double.infinity,
                  height: 50,
                  child: Text(
                    'list',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 34, fontStyle: FontStyle.italic),
                  )),
              color: Colors.lightGreen,
              elevation: 6.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            )*/

          ),
    );
  }
}
