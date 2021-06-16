import 'package:flutter/material.dart';
import 'package:grocery_shop/config/colors.dart';

class ReviewCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ListTile(
        title: Text('total amount'),
        subtitle: Text(
          '\$170',
          style: TextStyle(color: Colors.green[900]),
        ),
        trailing: Container(
          width: 160,
          child: MaterialButton(
            onPressed: () {},
            child: Text('Submit'),
            color: primaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          'Review Cart',
          style: TextStyle(color: textColor, fontSize: 18),
        ),
      ),
      body: ListView(
        children: [
          // SizedBox(
          //   height: 10,
          // ),
          // SingleItem(
          //   isBool: true,
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          // SingleItem(
          //   isBool: true,
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          // SingleItem(
          //   isBool: true,
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          // SingleItem(
          //   isBool: true,
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          // SingleItem(
          //   isBool: true,
          // ),
          // SizedBox(
          //   height: 10,
          // ),
        ],
      ),
    );
  }
}
