import 'package:flutter/material.dart';
import 'package:grocery_shop/config/colors.dart';
import 'package:grocery_shop/screens/profile/profile.dart';
import 'package:grocery_shop/screens/review__cart/review_cart.dart';

class DrawerSide extends StatelessWidget {
  Widget listTile({String title, IconData iconData, Function onTap}) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        iconData,
        size: 32,
      ),
      title: Text(
        title,
        style: TextStyle(color: textColor),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: 100,
        color: primaryColor,
        child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 43,
                    backgroundColor: Colors.white54,
                    child: CircleAvatar(
                      backgroundColor: Colors.yellow,
                      backgroundImage: NetworkImage(
                        "https://s3.envato.com/files/328957910/vegi_thumb.png",
                      ),
                      radius: 40,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Welcome Guest"),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        height: 30,
                        child: OutlineButton(
                          onPressed: () {},
                          child: Text("Login"),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: BorderSide(
                              width: 2,
                              color: textColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            listTile(iconData: Icons.home_outlined, title: "Home"),
            listTile(iconData: Icons.shop_outlined, title: "Review Cart",
            onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ReviewCart(),
                  ));
                }
            ),
            listTile(
                iconData: Icons.person_outlined,
                title: "My Profile",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Profile(),
                  ));
                }),
            listTile(
                iconData: Icons.notifications_outlined, title: "Notificatio"),
            listTile(iconData: Icons.star_outline, title: "Rating & Review"),
            listTile(iconData: Icons.favorite_outline, title: "Wishlist"),
            listTile(iconData: Icons.copy_outlined, title: "Raise a Complaint"),
            listTile(iconData: Icons.format_quote_outlined, title: "FAQs"),
            Container(
              height: 350,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Contact Support"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text("Call us:"),
                      SizedBox(
                        width: 10,
                      ),
                      Text("+923352580282"),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text("Mail us:"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "assarbaloch5@gmail.com",
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
