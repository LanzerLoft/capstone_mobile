import 'package:capstone/pages/Main.dart';
import 'package:capstone/pages/faculty_Login.dart';
import 'package:capstone/pages/student_Login.dart';
import 'package:flutter/material.dart';

class Frontlogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 0, left: 40, right: 40, bottom: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage('assets/stdnt.png', scale: 1.8),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Student & Faculty Profile",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.normal,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 43,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => StudentLogin()),
                      );
                    },
                    color: Colors.blueGrey,
                    splashColor: Colors.white38,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: Text(
                        'Student',
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.normal,
                          fontFamily: 'OpenSans',
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 43,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Facultylogin()),
                      );
                    },
                    color: Colors.blueGrey,
                    splashColor: Colors.white38,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: Text(
                        'Faculty',
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.normal,
                          fontFamily: 'OpenSans',
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
