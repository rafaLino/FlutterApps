import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _myCard(),
    );
  }

  Widget _myCard() {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/rafael.jpg'),
            ),
            Text(
              'Rafael Lino',
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 36.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontSize: 16.0,
                  letterSpacing: 2.0,
                  color: Colors.teal.shade100,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  '(11) 97756-1477',
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                    color: Colors.teal.shade900,
                    fontSize: 16.0
                  ),
                ),
              ),
            ),
            Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'rafaellinosantos@outlook.com.br',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      color: Colors.teal.shade900,
                      fontSize: 16.0,
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Widget _layoutChallenge() {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              color: Colors.red,
              width: 100.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              color: Colors.yellow,
              height: 100.0,
              width: 100.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              color: Colors.blue,
              width: 100.0,
            )
          ],
        ),
      ),
    );
  }
}
