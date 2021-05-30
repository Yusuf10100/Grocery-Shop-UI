import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Home',
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white70,
            child: Icon(
              Icons.search,
              size: 20,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white70,
              child: Icon(
                Icons.shopping_bag,
                size: 20,
                color: Colors.black,
              ),
            ),
          )
        ],
        backgroundColor: Color(0xffd6b738),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQi0Xg-k622Sbztlrb-L1o1CAla3zCbVc2lUw&usqp=CAU'),
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                          // color: Colors.red,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 140, bottom: 10),
                                child: Container(
                                  height: 50,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Color(0xffd1ad17),
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(50),
                                          bottomLeft: Radius.circular(50))),
                                  child: Center(
                                    child: Text(
                                      'Vegi',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          shadows: [
                                            BoxShadow(
                                                color: Colors.green,
                                                blurRadius: 10,
                                                offset: Offset(3, 3))
                                          ]),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                '30% Off',
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.green[100],
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: Text(
                                  'On all vegetables products',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.green[100],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                    Expanded(
                        child: Container(
                            // color: Colors.red,
                            )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Herbs Seasonings'),
                  Text(
                    'View all',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [singleProduct(), singleProduct(), singleProduct()],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Fresh Fruits'),
                  Text(
                    'View all',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleProduct(), singleProduct(), singleProduct()],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget singleProduct() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 230,
      width: 160,
      decoration: BoxDecoration(
          color: Color(0xffd9dad9), borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 2,
              child: Image.network(
                  'https://pngimg.com/uploads/spinach/spinach_PNG10.png')),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            child: Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fresh Basil',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Text('50\$50 Gram',
                        style: TextStyle(
                          color: Colors.grey,
                        )),
                    Row(
                      children: [
                        Expanded(
                            child: Container(
                          padding: EdgeInsets.only(left: 5),
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text('50 Gram',
                                    style: TextStyle(fontSize: 10)),
                              ),
                              Center(
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.yellow,
                                ),
                              ),
                            ],
                          ),
                        )),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Container(
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.remove,
                                  size: 15,
                                  color: Color(0xffd0b84c),
                                ),
                                Text(
                                  '1',
                                  style: TextStyle(
                                      color: Color(0xffd0b84c),
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(Icons.add,
                                    size: 15, color: Color(0xffd0b84c))
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
