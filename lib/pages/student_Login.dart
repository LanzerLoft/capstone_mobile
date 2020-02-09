import 'package:capstone/pages/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';
import 'package:capstone/bloc/LoginBloc.dart';

class StudentLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
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
                        image: ExactAssetImage('assets/sbci.png', scale: 1.8),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Student Login",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.normal,
                      fontSize: 40,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  StreamBuilder(
                    stream: sl.epnStream,
                    builder: (context, snapshot) {
                      return TextField(
                        onChanged: sl.epnSink,
                        style: TextStyle(fontSize: 25),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.blueGrey,
                          ),
                          labelText: 'ID Number',
                          labelStyle: TextStyle(
                            color: Colors.blueGrey,
                            fontFamily: 'OpenSans',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                        ),
                      );
                    }
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
                        MaterialPageRoute(builder: (context) => Dashboard()),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Text(
                        "Forgot your password?",
                        style: TextStyle(
                          color: Colors.blueGrey,
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
                        sl.submit(context);
                      },
                      color: Colors.blueGrey,
                      splashColor: Colors.white38,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: Text(
                          'Login',
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
    return StreamBuilder<Object>(
      stream: sl.pwdStream,
      builder: (context, snapshot) {
        return TextField(
          onChanged: sl.pwdSink,
          style: TextStyle(fontSize: 25),
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.lock,
              color: Colors.blueGrey,
            ),
            labelText: 'Password',
            labelStyle: TextStyle(
              color: Colors.blueGrey,
              fontFamily: 'OpenSans',
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
            ),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _showpassword = !_showpassword;
                });
              },
              child: Icon(
                _showpassword ? Icons.visibility : Icons.visibility_off,
                color: Colors.blueGrey,
              ),
            ),
          ),
          obscureText: !_showpassword,
        );
      }
    );
  }
}
