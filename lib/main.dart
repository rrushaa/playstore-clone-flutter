import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_play_clone/includes/myNavigationDrawer.dart';
import 'package:google_play_clone/includes/search_bar_module.dart';
import 'package:google_play_clone/pages/default_for_you.dart';
import 'package:google_play_clone/pages/game_for_you.dart';
import 'package:google_play_clone/pages/home_for_you.dart';
import 'package:google_play_clone/splash.dart';

import 'Authentication/auth.dart';
import 'firebase_options.dart';
import 'home.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Play Clone',
      theme: ThemeData(
        primaryColor: Color(0xff01865f),
      ),
      home: LandingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyDashboard extends StatefulWidget {
  @override
  _MyDashboardState createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> with SingleTickerProviderStateMixin {
  late TabController _googlePlayStoreController;

  @override
  void initState() {
    super.initState();
    _googlePlayStoreController = TabController(vsync: this, initialIndex: 0, length: 5);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Google Play"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              showSearch( context: context, delegate:GooglePlaySearch() );
            },
          ),
          Icon(Icons.keyboard_voice),
          Padding(padding: EdgeInsets.only(right: 20.0)),
        ],
        bottom: TabBar(
          controller: _googlePlayStoreController,
          indicatorColor: Colors.white,
          isScrollable: true,
          tabs: <Widget>[
            Tab(text: "HOME"),
            Tab(text: "GAMES"),
            Tab(text: "MOVIES"),
            Tab(text: "BOOKS"),
            Tab(text: "MUSIC"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _googlePlayStoreController,
        children: <Widget>[
          HomeForYou(),
          GameForYou(),
          DefaultForYou(),
          DefaultForYou(),
          DefaultForYou(),
        ],
      ),
      drawer: Drawer(
        child: MyNavigationDrawer(),
      ),
    );
  }
}

