import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget{
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<ProfilePage>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          centerTitle:  true,
          title:
          Text("Profile"),
        ),
      ),
    );
  }
}