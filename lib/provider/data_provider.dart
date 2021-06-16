
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DataProvider extends ChangeNotifier {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  Future fetchData(String collection) async {
    QuerySnapshot querySnapshot =
        await firebaseFirestore.collection(collection).get();
    return querySnapshot.docs;
  }
}
