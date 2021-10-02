import 'package:flutter/material.dart' show BuildContext, MaterialApp, StatelessWidget, Widget, runApp;
import 'package:lastapp2308/services/auth.dart';
import 'package:provider/provider.dart';
import 'models/user.dart';
import 'screens/wrapper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root+ of your application.
  @override
  Widget build(BuildContext context) {
   
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
         debugShowCheckedModeBanner: false,
        home: Wrapper(),
      ),
    );
  }
}