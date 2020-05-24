import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/seven.jpg"), fit: BoxFit.cover),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.0),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Column(children: <Widget>[
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(10, 10),
                                blurRadius: 20.0,
                                color: Colors.black45)
                          ]),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/profile.jpeg'),
                        radius: 45,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Chandler Bing",
                        style: GoogleFonts.saira(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                    Text("Businessman | Comedian | Transponster",
                        style: GoogleFonts.saira(
                          color: Colors.white70,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        )),
                  ]),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Recent Photos",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Text(
                          "Show All",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(left: 20),
                      children: <Widget>[
                        photo(image: "images/five.jpg"),
                        photo(image: "images/one.jpg"),
                        photo(image: "images/three.jpg"),
                        photo(image: "images/four.jpg"),
                        photo(image: "images/two.jpg"),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Stories",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                        Text("Show All",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 18))
                      ],
                    ),
                  ),
                  Container(
                      height: 350,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.only(left: 30),
                        children: <Widget>[
                          story(image: "images/six.jpg"),
                          story(image: "images/five.jpg"),
                          story(image: "images/two.jpg"),
                          story(image: "images/seven.jpg"),
                        ],
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget photo({image}) {
    return Container(
      width: 180,
      margin: EdgeInsets.only(right: 30, bottom: 15, top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        boxShadow: [
          BoxShadow(
              offset: Offset(5, 5),
              blurRadius: 10,
              color: Colors.black.withOpacity(.7))
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2)
              ],
              begin: Alignment.bottomRight,
              stops: [.3, .9]),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text("My title",
                  style: GoogleFonts.saira(color: Colors.white, fontSize: 20)),
              SizedBox(width: 30),
              Icon(
                Icons.favorite_border,
                color: Colors.white,
                size: 20,
              ),
              SizedBox(
                width: 5,
              ),
              Text("236",
                  style: GoogleFonts.saira(color: Colors.white, fontSize: 18)),
            ],
          ),
        ),
      ),
    );
  }

  Widget story({image}) {
    return Container(
      width: 220,
      margin: EdgeInsets.only(right: 30, bottom: 15, top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        boxShadow: [
          BoxShadow(
            offset: Offset(5, 5),
            blurRadius: 10,
            color: Colors.black.withOpacity(.7),
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),
              ],
              begin: Alignment.bottomRight,
              stops: [.3, .9]),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text("My Story",
                style: GoogleFonts.saira(color: Colors.white, fontSize: 30)),
          ),
        ),
      ),
    );
  }
}
