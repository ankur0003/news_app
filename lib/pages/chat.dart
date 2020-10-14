import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget{
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<ChatPage>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle:  true,
          title:
          Text("Chat"),
        ),
      ),
    );
  }
}