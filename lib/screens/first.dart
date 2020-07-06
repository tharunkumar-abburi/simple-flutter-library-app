import 'package:flutter/material.dart';
import 'package:libraryapp1/Animation/FadeAnimation.dart';
import 'package:libraryapp1/screens/bookavaliability.dart';
import 'package:libraryapp1/screens/duescreen.dart';
import 'package:libraryapp1/screens/issuescreen.dart';
import 'package:libraryapp1/screens/questionpaper.dart';




class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     /* appBar: AppBar(
        title: Text("check below info"),
        backgroundColor: Color(0xFFFF5722),
      ),*/
      body:
      new Stack(
          children: <Widget>[
      new Container(
      decoration: new BoxDecoration(
      image: new DecorationImage(image: new AssetImage("assets/images/hback.jpeg"), fit: BoxFit.cover,),
    ),
    ),
      Center(
        /*child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
          ),*/
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 60,
              ),
              FadeAnimation(
                1.4,
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(225, 95, 27, .3),
                            blurRadius: 20,
                            offset: Offset(0, 10))
                      ]),
                  child: Column(children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.grey[200]))),
                        child: RaisedButton(
                            child: Center(
                              child: Text("Book availability and position",
                                  style: TextStyle(
                                      color: Colors.orangeAccent,
                                      fontWeight: FontWeight.bold)),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BookRoute()),
                              );
                            })),
                    Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.grey[200]))),
                        child: RaisedButton(
                            child: Center(
                              child: Text("Issue and due details",
                                  style: TextStyle(
                                      color: Colors.orangeAccent,
                                      fontWeight: FontWeight.bold)),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => IssueRoute()),
                              );
                            })),
                  /*  Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.grey[200]))),
                        child: RaisedButton(
                            child: Center(
                              child: Text("Due details",
                                  style: TextStyle(
                                      color: Colors.orangeAccent,
                                      fontWeight: FontWeight.bold)),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DueRoute()),
                              );
                            })),*/
                    Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.grey[200]))),
                        child: RaisedButton(
                            child: Center(
                              child: Text("Previous question papers",
                                  style: TextStyle(
                                      color: Colors.orangeAccent,
                                      fontWeight: FontWeight.bold)),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => QuestionRoute()),
                              );
                            })),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
          ],
          )
    );
  }
}
