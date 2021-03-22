import 'package:flutter/material.dart';
import 'package:hidroponik/componens/button.dart';
import 'package:hidroponik/componens/rounded_search_field.dart';
import 'package:hidroponik/componens/rounded_box.dart';

void main() {
  runApp(new MaterialApp(
    title: "FourGreen Company",
    home: new Hidroponik(),
  ));
}

class Hidroponik extends StatefulWidget {
  @override
  _HidroponikState createState() => _HidroponikState();
}

class _HidroponikState extends State<Hidroponik> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: Color(0xff04855e),
          actions: <Widget>[
            RoundedSearchField(),
            new IconButton(
                icon: new Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
                onPressed: null),
            new IconButton(
                icon: new Icon(
                  Icons.mark_chat_unread_outlined,
                  color: Colors.white,
                ),
                onPressed: null)
          ],
        ),
        body: new Stack(
          children: <Widget>[
            Container(
              height: 70,
              color: Color(0xFF04855e),
            ),
            // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            new Column(
              children: <Widget>[
                Image.asset(
                  "img/tree.png",
                  width: 75.0,
                ),
                new Text(
                  "HIDROPONIK",
                  style:
                      new TextStyle(fontSize: 20.0, color: Color(0xFF117b1b)),
                ),
                new Image.asset(
                  "img/hidroponik.jpg",
                  width: 300.0,
                  height: 300.0,
                ),
                new Row(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: 55)),
                    // SizedBox(
                    //   height: size.height * 0.05,
                    // ),
                    Btntes(
                      txtBtn: "Tips & Trik",
                    ),
                    Btntes2(
                      txtBtn: "Sejarah",
                    )
                    // RoundedButton(
                    //   // text: "Tips&Trik",
                    //   press: () {},
                    // ),
                    // RoundedButton3(
                    //   // text: "Sejarah",
                    //   press: () {},
                    // ),
                  ],
                ),
                new Column(
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.00,
                    ),
                    RoundedButton2(
                      text: "Kelebihan&Kekurangan",
                      press: () {},
                    ),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "FourGreen Company",
        debugShowCheckedModeBanner: false,
        home: Hidroponik());
  }
}
