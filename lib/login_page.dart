//Design from: https://www.behance.net/gallery/64718407/Exchanger-Search-Application

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
              ),
            ),
            Icon(
              FontAwesomeIcons.bitcoin,
              size: 50.0,
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              'Bitcoinvert',
              style: TextStyle(fontSize: 35.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(
                    FontAwesomeIcons.idCard,
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(
                    FontAwesomeIcons.lock,
                  ),
                  trailing: Text(
                    'Forgot?',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                    ),
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
              child: SizedBox(
                width: double.infinity,
                child: FlatButton(
                  onPressed: () {},
                  child: Text('LOGIN'),
                ),
              ),
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.white,
                width: 2.0,
              )),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "DON'T HAVE AN ACCOUNT? SIGN UP",
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
