import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final titlecontroller = TextEditingController();
    final amountcontroller = TextEditingController();
    return Card(
      elevation: 3.0,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Title"),
              controller: titlecontroller,
              //onChanged: (value) {
              // t_input = value;
              //},
            ),
            TextField(
                decoration: InputDecoration(labelText: 'Amount'),
                //onChanged: (value) {
                //  amt_input = value;
                //},
                controller: amountcontroller),
            ElevatedButton(
                child: Text('Add transaction'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink[400], //background color
                    elevation: 3.0), //ripple color
                onPressed: () {
                  print(titlecontroller.text);
                  print(amountcontroller.text);
                })
          ],
        ),
      ),
    );
  }
}
