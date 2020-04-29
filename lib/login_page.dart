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
              height: 20.0,
            ),
            ReusableCard(
              placeholder: 'Email',
              icon: FontAwesomeIcons.idCard,
            ),
            ReusableCard(
              placeholder: 'Password',
              icon: FontAwesomeIcons.lock,
              trailingString: Text(
                'Forgot?',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15.0,
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

class ReusableCard extends StatelessWidget {
  String placeholder;
  IconData icon;
  Widget trailingString;
  ReusableCard({@required this.placeholder, this.icon, this.trailingString});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Icon(
            icon,
          ),
          trailing: trailingString,
          title: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: placeholder,
              hintStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
