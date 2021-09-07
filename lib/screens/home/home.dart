import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lastapp2308/screens/home/geec_list.dart';

import 'package:lastapp2308/services/auth.dart';
import 'package:lastapp2308/services/database.dart';
import 'package:provider/provider.dart';


class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return StreamProvider<QuerySnapshot>.value(
      value: DatabaseService().geecs,
      child: Scaffold(
        backgroundColor: Colors.yellow[50],
        appBar: AppBar(
          title: Text('GEEC'),
          backgroundColor: Colors.yellow[400],
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.person),
              label: Text('logout'),
              onPressed: () async {
                await _auth.signOut();
              },
            ),
          ],
        ),
        body: GeecList(),
      ),
    );
  }
}