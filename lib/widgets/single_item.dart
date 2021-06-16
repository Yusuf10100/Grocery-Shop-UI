// import 'package:flutter/material.dart';
// import 'package:grocery_shop/config/colors.dart';

// class SingleItem extends StatelessWidget {
//   bool isBool = false;
//   SingleItem({this.isBool});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 10),
//           child: Row(
//             children: [
//               Expanded(
//                 child: Container(
//                   height: 100,
//                   child: Image.network(
//                       'https://purepng.com/public/uploads/large/purepng.com-pepermintpeperminthybrid-mintperennial-plantmint-14115270742872fda0.png'),
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   height: 100,
//                   child: Column(
//                     mainAxisAlignment: isBool == false
//                         ? MainAxisAlignment.spaceAround
//                         : MainAxisAlignment.spaceEvenly,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Column(
//                         children: [
//                           Text(
//                             'Prodct Name',
//                             style: TextStyle(
//                                 color: textColor, fontWeight: FontWeight.bold),
//                           ),
//                           Text(
//                             '50\$50 Gram',
//                             style: TextStyle(
//                               color: Colors.grey,
//                             ),
//                           ),
//                         ],
//                       ),
//                       isBool == false
//                           ? Container(
//                               margin: EdgeInsets.only(right: 15),
//                               padding: EdgeInsets.symmetric(horizontal: 10),
//                               height: 35,
//                               decoration: BoxDecoration(
//                                 border: Border.all(color: Colors.grey),
//                                 borderRadius: BorderRadius.circular(30),
//                               ),
//                               child: Row(
//                                 children: [
//                                   Expanded(
//                                     child: Text(
//                                       '50 Gram',
//                                       style: TextStyle(
//                                         color: Colors.grey,
//                                         fontSize: 14,
//                                       ),
//                                     ),
//                                   ),
//                                   Center(
//                                     child: Icon(
//                                       Icons.arrow_drop_down,
//                                       size: 20,
//                                       color: primaryColor,
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             )
//                           : Text('50 Gram')
//                     ],
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                     height: 100,
//                     padding: isBool == false
//                         ? EdgeInsets.symmetric(horizontal: 15, vertical: 32)
//                         : EdgeInsets.only(left: 14, right: 15),
//                     child: isBool == false
//                         ? Container(
//                             height: 25,
//                             width: 50,
//                             decoration: BoxDecoration(
//                               border: Border.all(color: Colors.grey),
//                               borderRadius: BorderRadius.circular(30),
//                             ),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Icon(
//                                   Icons.add,
//                                   color: primaryColor,
//                                   size: 20,
//                                 ),
//                                 Text(
//                                   'ADD',
//                                   style: TextStyle(
//                                     color: primaryColor,
//                                     fontSize: 14,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           )
//                         : Column(
//                             children: [
//                               Icon(
//                                 Icons.delete,
//                                 size: 30,
//                                 color: Colors.black54,
//                               ),
//                               SizedBox(
//                                 height: 5,
//                               ),
//                               Container(
//                                 height: 25,
//                                 width: 50,
//                                 decoration: BoxDecoration(
//                                   border: Border.all(color: Colors.grey),
//                                   borderRadius: BorderRadius.circular(30),
//                                 ),
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Icon(
//                                       Icons.add,
//                                       color: primaryColor,
//                                       size: 20,
//                                     ),
//                                     Text(
//                                       'ADD',
//                                       style: TextStyle(
//                                         color: primaryColor,
//                                         fontSize: 14,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               )
//                             ],
//                           )),
//               ),
              
//             ],
//           ),
//         ),
//         isBool == false
//               ? Container()
//               : Divider(
//                   height: 1,
//                   color: Colors.black54,
//                 ),
//       ],
//     );
//   }
// }
