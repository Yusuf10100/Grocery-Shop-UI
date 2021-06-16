import 'package:flutter/material.dart';
import 'package:grocery_shop/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class CounterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var instanceOfCounterProvider = Provider.of<CounterProvider>(context);
    
    return Text('${instanceOfCounterProvider.quantity}');
  }
}
