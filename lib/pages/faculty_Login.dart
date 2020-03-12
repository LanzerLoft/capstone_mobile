import 'package:capstone/pages/Main.dart';
import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';

class Facultylogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.blueGrey,
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 40, right: 40, bottom: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage('assets/sbci.png', scale: 1.8),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Faculty Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.normal,
                        fontSize: 40,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      style: TextStyle(fontSize: 25),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email, color: Colors.white),
                        labelText: 'ID Number',
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    PassTextfield(),
                    SizedBox(
                      height: 25,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Main()),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Text(
                          "Forgot your password?",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      height: 43,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Main()),
                          );
                        },
                        color: Colors.white,
                        splashColor: Colors.white38,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.blueGrey,
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
        ),
      ),
    );
  }
}

class PassTextfield extends StatefulWidget {
  @override
  _PassTextfieldState createState() => _PassTextfieldState();
}

class _PassTextfieldState extends State<PassTextfield> {
  bool _showpassword = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(fontSize: 25),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock, color: Colors.white),
        labelText: 'Password',
        labelStyle: TextStyle(
          color: Colors.white,
          fontFamily: 'OpenSans',
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _showpassword = !_showpassword;
            });
          },
          child: Icon(
            _showpassword ? Icons.visibility : Icons.visibility_off,
            color: Colors.white,
          ),
        ),
      ),
      obscureText: !_showpassword,
    );
  }
}
