import 'package:flutter/material.dart';

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
