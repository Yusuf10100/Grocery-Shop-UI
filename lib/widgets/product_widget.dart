import 'package:flutter/material.dart';
import 'package:grocery_shop/config/colors.dart';
import 'package:grocery_shop/provider/data_provider.dart';
import 'package:grocery_shop/screens/product_overview/product_overview.dart';
import 'package:provider/provider.dart';

class HerbsData extends ChangeNotifier {
  Widget buildHerbsProduct(BuildContext context, String collection) {
    return Container(
      height: 300,
      child: FutureBuilder(
        future: Provider.of<DataProvider>(context, listen: false)
            .fetchData(collection),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Transform.scale(
              scale: 0.3,
              child: CircularProgressIndicator(
                  valueColor: new AlwaysStoppedAnimation<Color>(primaryColor)),
            );
          }
          return Expanded(
            child: Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(collection),
                          Text(
                            'view all',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductOverview(queryDocumentSnapshot: snapshot.data[index],)),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 230,
                            width: 165,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: scaffoldBackgroundColor,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade500,
                                      blurRadius: 5,
                                      spreadRadius: 3)
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      SizedBox(
                                        height: 160,
                                        child: Image.network(snapshot
                                            .data[index]
                                            .data()['Image']),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 4.0),
                                    child: Text(
                                      snapshot.data[index].data()['Name'],
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 40.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          snapshot.data[index]
                                              .data()['Price']
                                              .toString(),
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
