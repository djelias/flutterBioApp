import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'fragments/contactPage.dart';
import 'fragments/eventPage.dart';
import 'fragments/homePage.dart';
import 'fragments/notificationPage.dart';
import 'fragments/profilePage.dart';
import 'package:flutter_bio_app/routes/pageRoute.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'NavigationDrawer Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: homePage(),
      routes:  {
        pageRoutes.home: (context) => homePage(),
        pageRoutes.contact: (context) => contactPage(),
        pageRoutes.event: (context) => eventPage(),
        pageRoutes.profile: (context) => profilePage(),
        pageRoutes.notification: (context) => notificationPage(),
      },
    );
  }
}