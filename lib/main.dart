import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:grocery_shop/auth.dart/sign_in.dart';
import 'package:grocery_shop/provider/counter_provider.dart';
import 'package:grocery_shop/provider/data_provider.dart';
import 'package:grocery_shop/provider/product_provider.dart';
import 'package:grocery_shop/widgets/product_widget.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          // ChangeNotifierProvider.value(value: ProductProvider()),
          ChangeNotifierProvider.value(value: DataProvider()),
          ChangeNotifierProvider.value(value: HerbsData()),
          ChangeNotifierProvider.value(value: CounterProvider()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SignIn(),
        ));
  }
}
