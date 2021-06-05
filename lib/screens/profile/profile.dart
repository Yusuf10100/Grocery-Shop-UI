import 'package:flutter/material.dart';
import 'package:grocery_shop/config/colors.dart';
import 'package:grocery_shop/screens/home/drawer_side.dart';

class Profile extends StatelessWidget {


  Widget listTile({IconData icon,String title}){
    return Column(
      children: [
        Divider(
          height: 1,
        ),
        ListTile(
          leading: Icon(icon),
          title: Text(title),
          trailing: Icon(Icons.arrow_forward_ios),
        )
      ],
    );
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        title: Text(
          'Your Profile',
          style: TextStyle(
            fontSize: 18,
            color: textColor,
          ),
        ),
      ),
      drawer: DrawerSide(),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                color: primaryColor,
              ),
              Container(
                height: 548,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  color: scaffoldBackgroundColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: ListView(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 80,
                          padding: EdgeInsets.only(left: 70),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 80),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Yusuf',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: textColor),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text('yusuf@gmail.com'),
                                  ],
                                ),
                                SizedBox(width: 10,),
                                CircleAvatar(
                                  radius: 15,
                                  backgroundColor: primaryColor,
                                  child: CircleAvatar(
                                    radius: 12,
                                    child: Icon(
                                      Icons.edit,
                                      color: primaryColor,
                                    ),
                                    backgroundColor: scaffoldBackgroundColor,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    listTile(icon: Icons.shopping_bag_outlined,title: 'Your Orders'),
                    listTile(icon: Icons.location_on_outlined,title: 'Your Location'),
                    // listTile(icon: Icons.person_outline,title: 'Your Orders'),
                    // listTile(icon: Icons.file_copy_outlined,title: 'Terms & Conditions'),
                    listTile(icon: Icons.policy_outlined,title: 'Policy'),
                    listTile(icon: Icons.exit_to_app_outlined,title: 'Log out'),
                    
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: CircleAvatar(
              radius: 70,
              backgroundColor: primaryColor,
              child: Padding(
                padding: const EdgeInsets.only(top: 5, left: 5.0),
                child: CircleAvatar(
                  backgroundColor: scaffoldBackgroundColor,
                  backgroundImage: NetworkImage(
                      'https://s3.envato.com/files/328957910/vegi_thumb.png'),
                  radius: 50,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
