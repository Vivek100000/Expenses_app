import 'package:flutter/material.dart';
import './transaction_list.dart';
import './new_transaction.dart';
import '../model/Transaction.dart';

class usertransaction extends StatefulWidget {
  @override
  State<usertransaction> createState() => _usertransactionState();
}

class _usertransactionState extends State<usertransaction> {
  final List<Transaction> usertransaction = [
    Transaction(title: 'grocery', date: DateTime.now(), amount: 45.00),
    Transaction(title: 'clothes', date: DateTime.now(), amount: 100.00)
  ];
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      TransactionList(usertransaction: usertransaction),
      NewTransaction(),
    ]);
  }
}
