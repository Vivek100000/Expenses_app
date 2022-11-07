import '../model/Transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> usertransaction;
  TransactionList({this.usertransaction});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: usertransaction.map((tr) {
        return Card(
            /*child: Container(
                  //the container can also be used for card to set the size of the card not just for the text that is the another method
                  height: 70,
                  width: double.infinity,*/
            child: Row(children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                height: 50,
                child: Text(
                  '\$${tr.amount}', //string interpolation//tr.amount.toString(),
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 242, 32, 238)),
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(255, 217, 28, 231), width: 2)),
                padding: EdgeInsets.all(4),
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(tr.title,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 23,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(179, 24, 24, 24))),
                    Text(DateFormat().format(tr.date),
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 15,
                            fontStyle: FontStyle.normal,
                            color: Color.fromARGB(179, 44, 42, 42))),
                  ])
            ]),
            color: Color.fromARGB(255, 234, 239, 240),
            elevation: 6.0,
            borderOnForeground: true,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)));
      }).toList(),
    );
  }
}
