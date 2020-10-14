import 'package:flutter/material.dart';
import 'package:flutter_app/pages/chat.dart';
import 'package:flutter_app/pages/home.dart';
import 'package:flutter_app/pages/profile.dart';
import 'package:flutter_app/pages/settings.dart';


class HomePage extends StatefulWidget{
    @override
    _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage>{

  int currentTab = 0;
  final List<Widget> pages = [
    Home(),
    ChatPage(),
    ProfilePage(),
    SettingsPage(),

  ];
  final List<String> pageNames = [
    'Home',
    "Chat",
    "Profile",
    "Settings"
  ];
  //active page tab
  Widget currentPage = HomePage();
  PageStorageBucket bucket  = PageStorageBucket();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(

       /* appBar: AppBar(
          centerTitle: true,
          //title: Text(pageNames[currentTab] ),

        ),*/
        bottomNavigationBar: BottomAppBar(
          color: Colors.blueGrey,

          shape: CircularNotchedRectangle(),

          child: Container(

            padding: EdgeInsets.all(10.0),
            child: new Row(

              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: <Widget>[
                Column(
                  mainAxisSize: MainAxisSize.min,
                children: [IconButton(
                  icon: Icon(Icons.home),
                  color: currentTab == 0 ? Colors.white : Colors.grey,
                  onPressed: () {setState(() {
                    currentTab=0;
                    currentPage = pages[currentTab];
                  });},
                ),
                  Text("Home", style: TextStyle(color: currentTab == 0 ?Colors.white: Colors.grey),)
                ]
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.mail),
                      color: currentTab == 1 ? Colors.white : Colors.grey,
                      onPressed: () {
                        setState(() {
                          currentTab=1;
                          currentPage = pages[currentTab];
                        });
                      },
                    ),Text("Inbox", style: TextStyle(color: currentTab == 1 ?Colors.white: Colors.grey),)
                  ],
                ),
                SizedBox(width: 30.0,),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.person),
                      color: currentTab == 2 ? Colors.white:Colors.grey,
                      onPressed: () {
                        setState(() {
                          currentTab=2;
                          currentPage = pages[currentTab];
                        });
                      },
                    ),
                    Text("Profile", style: TextStyle(color: currentTab == 2 ?Colors.white: Colors.grey),)
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.settings),
                      color: currentTab == 3 ? Colors.white:Colors.grey,
                      onPressed: () {
                        setState(() {
                          currentTab=3;
                          currentPage = pages[currentTab];

                        });
                      },
                    ),
                    Text("Settings", style: TextStyle(color: currentTab == 3 ?Colors.white: Colors.grey),)
                  ],
                ),
              ],

            ),
          ),

        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amberAccent,
           splashColor: Colors.blueGrey,

          child: const Icon(

            Icons.edit,
            color: Colors.blueGrey,
          ),
          onPressed: () {},

        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: pages[currentTab],

      ),

    );
  }
}