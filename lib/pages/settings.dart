import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget{
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<SettingsPage>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          centerTitle: true,
          title:
          Text("Settings"),
        ),
      ),
    );
  }
}