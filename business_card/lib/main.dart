import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(CardHome());
}

class CardHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    minRadius: 50.0,
                    maxRadius: 60.0,
                    backgroundImage: AssetImage("assets/me.jpeg"),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "Victor Assis",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Satisfy',
                    ),
                  ),
                  Text(
                    "FULL STACK DEVELOPER",
                    style: TextStyle(
                      color: Colors.blueGrey.shade200,
                      fontSize: 20.0,
                      fontFamily: 'Sans_Pro',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                    width: 150.0,
                    child: Divider(
                      color: Colors.blueGrey.shade300,
                    ),
                  ),
                  Card(
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 35.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.blueGrey.shade600,
                      ),
                      title: Text(
                        "+55 61 983-783-465",
                        style: TextStyle(
                          fontFamily: 'SansPro',
                          fontSize: 18.0,
                          color: Colors.blueGrey.shade600,
                        ),
                      ),
                      onTap: () => launch("tel://+5561983783465"),
                    ),
                  ),
                  Card(
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 35.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.mail,
                        color: Colors.blueGrey.shade600,
                      ),
                      title: Text(
                        "victor@onsurance.me",
                        style: TextStyle(
                          fontFamily: 'SansPro',
                          fontSize: 18.0,
                          color: Colors.blueGrey.shade600,
                        ),
                      ),
                      onTap: () => launch("mailto://victor@onsurance.me"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
