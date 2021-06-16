// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:grocery_shop/config/colors.dart';

// enum SinginCharacter { fill, outline }

// class ProductOverview extends StatefulWidget {
//   final String productName;
//   final String productImage;
//   ProductOverview({this.productImage, this.productName});

//   @override
//   _ProductOverviewState createState() => _ProductOverviewState();
// }

// class _ProductOverviewState extends State<ProductOverview> {
//   SinginCharacter _character = SinginCharacter.fill;

//   Widget buttonNavigatorBar({
//     Color iconColor,
//     Color backgroundColor,
//     Color color,
//     String title,
//     IconData iconData,
//   }) {
//     return Expanded(
//       child: Container(
//         padding: EdgeInsets.all(20),
//         color: backgroundColor,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(
//               iconData,
//               size: 17,
//               color: iconColor,
//             ),
//             SizedBox(
//               width: 5,
//             ),
//             Text(
//               title,
//               style: TextStyle(color: color),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: Row(
//         children: [
//           buttonNavigatorBar(
//             backgroundColor: textColor,
//             color: Colors.white70,
//             iconColor: Colors.grey,

//             title: "WishList",
//             iconData: Icons.favorite_outline,
//           ),
//           buttonNavigatorBar(
//             backgroundColor: primaryColor,
//             color: textColor,
//             iconColor: Colors.white70,
//             title: "Go To Cart",
//             iconData: Icons.shop_outlined,
//           ),
//         ],
//       ),
//       appBar: AppBar(
//         backgroundColor: primaryColor,
//         iconTheme: IconThemeData(color: textColor),
//         title: Text(
//           "Product Overview",
//           style: TextStyle(color: textColor),
//         ),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             flex: 2,
//             child: Container(
//               width: double.infinity,
//               child: Column(
//                 children: [
//                   ListTile(
//                     title: Text(widget.productName),
//                     subtitle: Text("\$50"),
//                   ),
//                   Container(
//                       height: 250,
//                       padding: EdgeInsets.all(40),
//                       child: Image.network(
//                         widget.productImage??"",
//                       )),
//                   Container(
//                     padding: EdgeInsets.symmetric(horizontal: 20),
//                     width: double.infinity,
//                     child: Text(
//                       "Available Options",
//                       textAlign: TextAlign.start,
//                       style: TextStyle(
//                         color: textColor,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.symmetric(
//                       horizontal: 10,
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             CircleAvatar(
//                               radius: 3,
//                               backgroundColor: Colors.green[700],
//                             ),
//                             Radio(
//                               value: SinginCharacter.fill,
//                               groupValue: _character,
//                               activeColor: Colors.green[700],
//                               onChanged: (value) {
//                                 setState(() {
//                                   _character = value;
//                                 });
//                               },
//                             ),
//                           ],
//                         ),
//                         Text("\$50"),
//                         Container(
//                           padding: EdgeInsets.symmetric(
//                             horizontal: 30,
//                             vertical: 10,
//                           ),
//                           decoration: BoxDecoration(
//                             border: Border.all(
//                               color: Colors.grey,
//                             ),
//                             borderRadius: BorderRadius.circular(
//                               30,
//                             ),
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Icon(
//                                 Icons.add,
//                                 size: 17,
//                                 color: primaryColor,
//                               ),
//                               Text(
//                                 "ADD",
//                                 style: TextStyle(color: primaryColor),
//                               )
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             child: Container(
//               padding: EdgeInsets.all(20),
//               width: double.infinity,
//               child: SingleChildScrollView(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "About This Product",
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Text(
//                       "In marketing, a product is an object or system made available for consumer use; it is anything that can be offered to a market to satisfy the desire or need of a customer. Wikipedia",
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: textColor,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:grocery_shop/config/colors.dart';
import 'package:grocery_shop/provider/counter_provider.dart';
import 'package:grocery_shop/widgets/count_widget.dart';
import 'package:provider/provider.dart';

class ProductOverview extends StatefulWidget {
  final QueryDocumentSnapshot queryDocumentSnapshot;
  const ProductOverview({
    this.queryDocumentSnapshot,
  });

  @override
  _ProductOverviewState createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text('Product Overview'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          productSelcetedImage(),
          middleData(),
          Spacer(),
          quantityChoice()
        ],
      ),
    );
  }

  Widget productSelcetedImage() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: SizedBox(
          height: 240,
          child: Container(
            child: Image.network(widget.queryDocumentSnapshot['Image']),
            decoration: BoxDecoration(shape: BoxShape.circle),
          ),
        ),
      ),
    );
  }

  Widget middleData() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(
            //   Icons.star,
            //   color: Colors.yellow.shade700,
            //   size: 20,
            // ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              constraints: BoxConstraints(maxWidth: 300),
              child: Text(
                widget.queryDocumentSnapshot['Name'],
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Row(
              children: [
                // Icon(
                //   FontAwesomeIcons.dollarSign,
                //   size: 20,
                //   color: Colors.cyan,
                // ),
                Text(
                  widget.queryDocumentSnapshot['Price'].toString(),
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.cyan.shade500,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '\$',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget quantityChoice() {
    var instanceOfCounterProvider =
        Provider.of<CounterProvider>(context, listen: false);

    int quantityValue =
        Provider.of<CounterProvider>(context, listen: true).getQuantityValue;
    String price = widget.queryDocumentSnapshot['Price'];
    int priceAsDouble = int.parse(price.toString());
    int result = quantityValue * priceAsDouble;
    String resultAsString = result.toString();
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('How Many?'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    instanceOfCounterProvider.minusCounter();
                  },
                  child: Icon(Icons.remove),
                  style: ElevatedButton.styleFrom(primary: primaryColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CounterWidget(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    instanceOfCounterProvider.plusCounter();
                  },
                  child: Icon(Icons.add),
                  style: ElevatedButton.styleFrom(primary: primaryColor),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Total Amount:',
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                resultAsString,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.cyan.shade500,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '\$',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Positioned(
            // bottom: 40,
            child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                width: 300,
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30.0,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: primaryColor),
                    onPressed: () {
                    },
                    child: Text(
                      'Add To Cart',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
