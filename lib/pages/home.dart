import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/model/quotes.dart';
import 'package:http/http.dart' as http;
class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
  Future<Quotes> futureData;
  List data;
  Future<http.Response> fetchData(){
      return http.get("https://quote-garden.herokuapp.com/api/v2/quotes");
  }
  Future<Quotes> fetchResponse() async{
    final result = await http.get("https://quote-garden.herokuapp.com/api/v2/quotes");
    if(result.statusCode == 200){
//        return Quotes.fromJson(jsonDecode(result.body)) ;
      setState(() {
        var jsonData = jsonDecode(result.body);
        data = jsonData['quotes'];
        print(data);
      });
    }

  }
  @override
  void initState() {
    super.initState();
    fetchResponse();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle:  true,
        title:
        Text("Home"),
      ),
      body:  ListView.builder(
        itemCount: data == null ?0:data.length,

          itemBuilder:(BuildContext context, int index) {

              return Container(
                  
                margin: EdgeInsets.only(left: 12.0, right: 12.0,top: 8.0),
                child: Center(
                  child: Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0))
                        ),
                        color: Colors.blueGrey,
                        elevation: 12.0,
                        child: Container(
                            padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                              children:[
                               Text(
                                data[index]['quoteText'],
                                 style: TextStyle(fontSize: 16.0,color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 30.0,),
                                Text(data[index]['quoteAuthor'].toString().isEmpty ?"unknown": data[index]['quoteAuthor'],
                                  style: TextStyle(fontStyle: FontStyle.italic,color: Colors.white),
                                  textAlign: TextAlign.end,)
                            ]
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }
          )
        );


  }
}