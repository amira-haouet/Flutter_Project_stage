import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lastapp2308/screens/home/geec_list.dart';
import 'package:lastapp2308/screens/menu/DashboardPage.dart';
import 'package:lastapp2308/screens/menu/contact.dart';
import 'package:lastapp2308/screens/menu/events.dart';

import 'package:lastapp2308/services/auth.dart';
import 'package:lastapp2308/services/database.dart';
import 'package:lastapp2308/shared/myheader.dart';
import 'package:provider/provider.dart';



class Home extends StatefulWidget {
    final AuthService _auth = AuthService();
  @override
  
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  final AuthService _auth = AuthService();
  var currentPage = DrawerSections.dashboard;

  @override
  Widget build(BuildContext context) {
    
    var container;
    if (currentPage == DrawerSections.dashboard) {
      container = Test();
    }

     else  {
      container = EventsPage();
  
    };

    
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
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu drawer
        children: [
          menuItem(1, "Materials", Icons.dashboard_outlined,
              currentPage == DrawerSections.dashboard ? true : false),
         
          menuItem(3, "Events", Icons.event,
              currentPage == DrawerSections.events ? true : false),
          
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashboard;
            } 
             else if (id == 3) {
              currentPage = DrawerSections.events;
            } 
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  dashboard,
  contacts,
  events,
 
}