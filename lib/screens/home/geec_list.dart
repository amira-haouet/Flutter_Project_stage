
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class BrewList extends StatefulWidget {
  @override
  _GeecListState createState() => _GeecListState();
}

class _GeecListState extends State<GeecList> {
  @override
  Widget build(BuildContext context) {

    final geecs = Provider.of<QuerySnapshot>(context);
    //print(brews.documents);
    for (var doc in geecs.documents) {
      print(doc.data);
    }

    return Container(
      
    );
  }
}