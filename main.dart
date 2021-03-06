import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:kartofgram/Pages/HomePage.dart';
import 'package:kartofgram/Pages/NotificationsPage.dart';
import 'package:kartofgram/Pages/ProfilePage.dart';
import 'Pages/SearchPage.dart';
//import 'package:flutter/services.dart';

void main() => runApp(
      MaterialApp(
        title: "Kartofgram",
        theme: ThemeData(primarySwatch: Colors.blue),
        debugShowCheckedModeBanner: false,
        home: App(),

        //color: Colors.black,
      ),
    );

class App extends StatelessWidget {
  final List<Widget> myPages = [
    HomePage(),
    SearchPage(),
    NotificationsPage(),
    ProfilePage(),
  ];

  Widget build(BuildContext context) {
    //SystemChrome.setEnabledSystemUIOverlays ([SystemUiOverlay.top]);
    return DefaultTabController(
        initialIndex: 0,
        length: 4,
        child: Scaffold(
            resizeToAvoidBottomPadding: false,
            body: TabBarView(
              children: myPages,
            ),
            bottomNavigationBar: Container(
              margin: EdgeInsets.only(bottom: 1),
              color: Colors.black87,
              child: new TabBar(tabs: [
                Tab(
                  icon: Icon(Feather.home),
                ),
                Tab(
                  icon: Icon(Feather.search),
                ),
                Tab(
                  icon: Icon(Feather.message_square),
                ),
                Tab(
                  icon: Icon(Feather.user),
                ),
              ]),
            )));
  }
}
