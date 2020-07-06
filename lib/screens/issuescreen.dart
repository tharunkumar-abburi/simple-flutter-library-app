import 'package:flutter/material.dart'; // Importing Material Package
// Importing url_launcher Package
import 'package:url_launcher/url_launcher.dart';

class IssueRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Issue and due remainder"),
          backgroundColor: Color(0xDFFFA000),
          ),
        body:
        new Stack(
            children: <Widget>[
              new Container(
                decoration: new BoxDecoration(
                  image: new DecorationImage(image: new AssetImage("assets/images/iback.png"), fit: BoxFit.cover,),
                  ),
                ),
              Center(
                child: RaisedButton(
                  onPressed: Click_Here,
                  child: Text('Click here'),
                  ),
                ),
            ]
            )
        );
  }
}
// ignore: non_constant_identifier_names
Click_Here() async {
  const url = 'add link of google sheet in which it contains details of dues and issues and an add on to be added in google sheets for  reminding dues ';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
