import 'package:flutter/material.dart';

class Loign extends StatefulWidget {
  @override
  _LoignState createState() => _LoignState();
}

class _LoignState extends State<Loign> {
  bool _showpassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _showpassword = !_showpassword;
                    });
                  },
                  child: Icon(
                      _showpassword ? Icons.visibility : Icons.visibility_off),
                ),
                labelText: 'Password',
              ),
              obscureText: !_showpassword,
            ),
          ],
        ),
      ),
    );
  }
}
