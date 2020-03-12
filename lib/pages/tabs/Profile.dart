import 'package:badges/badges.dart';
import 'package:capstone/models/MProfile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/fa_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:capstone/bloc/BProfile.dart';
import 'package:intl/intl.dart';

class Profile extends StatelessWidget{
  final font_size = 32.0;
  
  @override  
  Widget build(BuildContext context) {
    bp.fetchData();
    ScreenUtil.init(context);
    // TODO: implement build
    return Container(
      child: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 5.0),
            child: Column(
              children: <Widget>[
                _FirstRow(),
                _SecondRow(),
                _ThirdRow(),
                _FourthRow()
              ],
            ),
          ),
        ),
      )
    );
  }

  Widget _FirstRow(){
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 14.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20)
        ),
      ),
      child: Container(
        width: double.infinity,
        height: ScreenUtil().setSp(650),
        child: StreamBuilder(
          stream: bp.firstRowStream,
          builder: (context, snapshot) {

            if(snapshot.data == null){
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: SizedBox(
                      height: ScreenUtil().setHeight(50),
                      width: ScreenUtil().setWidth(60),
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.red
                      ),
                    ),
                  ),
                ],
              );
            }
            
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: (snapshot.data[3] == '') ?
                    Image.asset(
                      'assets/img/rommel.jpg',
                      fit: BoxFit.contain,
                      height: ScreenUtil().setHeight(250)
                    ) :
                    Image.network(
                        snapshot.data[3],
                        fit: BoxFit.contain,
                        height: ScreenUtil().setHeight(250)
                    )
                ),
                SizedBox( height: ScreenUtil().setHeight(20)),
                Text(
                  snapshot.data[0],
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: ScreenUtil().setSp(60)
                  )
                ),
                SizedBox( height: ScreenUtil().setHeight(10)),
                Text(
                  snapshot.data[1],
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: ScreenUtil().setSp(38)
                  )
                ),
                SizedBox( height: ScreenUtil().setHeight(3)),
                Text(
                  snapshot.data[2],
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: ScreenUtil().setSp(38)
                  )
                ),
              ],
            );
          }
        ),
      ),
    );
  }

  Widget _SecondRow(){
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: EdgeInsets.all(30.0),
        width: double.infinity,
        height: ScreenUtil().setHeight(770),        
        child: StreamBuilder(
          stream: bp.secondRowStream,
          builder: (context, snapshot) {

            if(snapshot.data == null){
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: SizedBox(
                      height: ScreenUtil().setHeight(50),
                      width: ScreenUtil().setWidth(60),
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.red
                      ),
                    ),
                  ),
                ],
              );
            }

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'About',
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(45),
                        fontWeight: FontWeight.w800
                      )
                    ),
                    FaIcon(
                      FontAwesomeIcons.edit,
                      color: Colors.blue,
                    ),
                  ],
                ),
                SizedBox( height: ScreenUtil().setHeight(50)),
                RichText(
                  text: TextSpan(
                    text: 'Year Level: ',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: ScreenUtil().setSp(font_size),
                      color: Color.fromRGBO(0, 0, 0, 1)
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' ${snapshot.data[0].yearLevel}',
                        style: TextStyle(
                          fontWeight: FontWeight.w300
                        )
                      ),
                    ],
                  )
                ),                
                RichText(
                  text: TextSpan(
                    text: 'Academic Year: ',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: ScreenUtil().setSp(font_size),
                      color: Color.fromRGBO(0, 0, 0, 1)
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '  ${int.parse(snapshot.data[0].academicYear )- 1} -  ${snapshot.data[0].academicYear}',
                        style: TextStyle(
                          fontWeight: FontWeight.w300
                        )
                      ),
                    ],
                  )
                ),
                RichText(
                  text: TextSpan(
                    text: 'Birthdate: ',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: ScreenUtil().setSp(font_size),
                      color: Color.fromRGBO(0, 0, 0, 1)
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' ' + DateFormat.yMMMMd('en_US').format(DateTime.parse(snapshot.data[0].birthdate)),
                        style: TextStyle(
                          fontWeight: FontWeight.w300
                        )
                      ),
                    ],
                  )
                ),
                RichText(
                  text: TextSpan(
                    text: 'Citizenship: ',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: ScreenUtil().setSp(font_size),
                      color: Color.fromRGBO(0, 0, 0, 1)
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' ' + snapshot.data[0].cName,
                        style: TextStyle(
                          fontWeight: FontWeight.w300
                        )
                      ),
                    ],
                  )
                ),
                RichText(
                  text: TextSpan(
                    text: 'Civil Status: ',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: ScreenUtil().setSp(font_size),
                      color: Color.fromRGBO(0, 0, 0, 1)
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' ' + snapshot.data[0].civilName,
                        style: TextStyle(
                          fontWeight: FontWeight.w300
                        )
                      ),
                    ],
                  )
                ),
                RichText(
                  text: TextSpan(
                    text: 'Religion: ',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: ScreenUtil().setSp(font_size),
                      color: Color.fromRGBO(0, 0, 0, 1)
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' ' + snapshot.data[0].religion,
                        style: TextStyle(
                          fontWeight: FontWeight.w300
                        )
                      ),
                    ],
                  )
                ),
                RichText(
                  text: TextSpan(
                    text: 'Email Address: ',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: ScreenUtil().setSp(font_size),
                      color: Color.fromRGBO(0, 0, 0, 1)
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' ' + snapshot.data[0].email,
                        style: TextStyle(
                          fontWeight: FontWeight.w300
                        )
                      ),
                    ],
                  )
                ),
                RichText(
                  text: TextSpan(
                    text: 'Contact No.: ',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: ScreenUtil().setSp(font_size),
                      color: Color.fromRGBO(0, 0, 0, 1)
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' ' + snapshot.data[0].contactNo,
                        style: TextStyle(
                          fontWeight: FontWeight.w300
                        )
                      ),
                    ],
                  )
                ),
                RichText(
                  text: TextSpan(
                    text: 'Permanent Address: ',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: ScreenUtil().setSp(font_size),
                      color: Color.fromRGBO(0, 0, 0, 1)
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' ' + snapshot.data[0].pAddress,
                        style: TextStyle(
                          fontWeight: FontWeight.w300
                        )
                      ),
                    ],
                  )
                ),
                RichText(
                  text: TextSpan(
                    text: 'Temporary Address: ',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: ScreenUtil().setSp(font_size),
                      color: Color.fromRGBO(0, 0, 0, 1)
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' ' + snapshot.data[0].tAddress,
                        style: TextStyle(
                          fontWeight: FontWeight.w300
                        )
                      ),
                    ],
                  )
                ),
                RichText(
                  text: TextSpan(
                    text: 'Mother\'s Name: ',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: ScreenUtil().setSp(font_size),
                      color: Color.fromRGBO(0, 0, 0, 1)
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' ' + snapshot.data[0].mother,
                        style: TextStyle(
                          fontWeight: FontWeight.w300
                        )
                      ),
                    ],
                  )
                ),
                RichText(
                  text: TextSpan(
                    text: 'Contact No.: ',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: ScreenUtil().setSp(font_size),
                      color: Color.fromRGBO(0, 0, 0, 1)
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' ' + snapshot.data[0].motherNo,
                        style: TextStyle(
                          fontWeight: FontWeight.w300
                        )
                      ),
                    ],
                  )
                ),
                RichText(
                  text: TextSpan(
                    text: 'Father\'s Name: ',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: ScreenUtil().setSp(font_size),
                      color: Color.fromRGBO(0, 0, 0, 1)
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' ' + snapshot.data[0].father,
                        style: TextStyle(
                          fontWeight: FontWeight.w300
                        )
                      ),
                    ],
                  )
                ),
                RichText(
                  text: TextSpan(
                    text: 'Contact No.: ',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: ScreenUtil().setSp(font_size),
                      color: Color.fromRGBO(0, 0, 0, 1)
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' ' + snapshot.data[0].fatherNo,
                        style: TextStyle(
                          fontWeight: FontWeight.w300
                        )
                      ),
                    ],
                  )
                ),
                RichText(
                  text: TextSpan(
                    text: 'Guardian\'s Name: ',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: ScreenUtil().setSp(font_size),
                      color: Color.fromRGBO(0, 0, 0, 1)
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' ' + snapshot.data[0].guardian,
                        style: TextStyle(
                          fontWeight: FontWeight.w300
                        )
                      ),
                    ],
                  )
                ),
                RichText(
                  text: TextSpan(
                    text: 'Contact No.: ',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: ScreenUtil().setSp(font_size),
                      color: Color.fromRGBO(0, 0, 0, 1)
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' ' + snapshot.data[0].guardianNo,
                        style: TextStyle(
                          fontWeight: FontWeight.w300
                        )
                      ),
                    ],
                  )
                ),

              ],
            );
          }
        ),
      )
    );
  }

  Widget _ThirdRow(){
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: EdgeInsets.all(30.0),
        width: double.infinity,
        height: ScreenUtil().setHeight(450),
        child: StreamBuilder(
          stream: bp.thirdRowStream,
          builder: (context, snapshot) {

            if(snapshot.data == null){
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: SizedBox(
                      height: ScreenUtil().setHeight(50),
                      width: ScreenUtil().setWidth(60),
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.red
                      ),
                    ),
                  ),
                ],
              );
            }

            final String faculty_name = snapshot.data[0].facultyName;
            final String subject_code  = snapshot.data[0].subjectCode;
            final String subject_name = snapshot.data[0].subjectName;
            final String subject = subject_code + ' - ' + subject_name;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Subjects',
                  style: TextStyle(
                    fontSize: ScreenUtil().setSp(45),
                    fontWeight: FontWeight.w800
                  )
                ),
                SizedBox( height: ScreenUtil().setHeight(50)),
                Text(
                  subject,
                  style: TextStyle(
                    fontSize: ScreenUtil().setSp(45),
                    fontWeight: FontWeight.w800
                  )
                ),
                SizedBox( height: ScreenUtil().setHeight(4)),
                Badge(
                  badgeColor: Colors.deepPurple,
                  shape: BadgeShape.square,
                  borderRadius: 20,
                  toAnimate: true,
                  badgeContent:
                      Text('Ongoing', style: TextStyle(color: Colors.white)),
                ),     
                SizedBox( height: ScreenUtil().setHeight(30)),  
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      text: 'Instructor/Professor: ',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: ScreenUtil().setSp(font_size),
                        color: Color.fromRGBO(0, 0, 0, 1)
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: faculty_name,
                          style: TextStyle(
                            fontWeight: FontWeight.w300
                          )
                        ),
                      ],
                    )
                  ),
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      text: 'Time: ',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: ScreenUtil().setSp(font_size),
                        color: Color.fromRGBO(0, 0, 0, 1)
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' 4:00PM - 8:00PM',
                          style: TextStyle(
                            fontWeight: FontWeight.w300
                          )
                        ),
                      ],
                    )
                  ),
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      text: 'Room: ',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: ScreenUtil().setSp(font_size),
                        color: Color.fromRGBO(0, 0, 0, 1)
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Comlab',
                          style: TextStyle(
                            fontWeight: FontWeight.w300
                          )
                        ),
                      ],
                    )
                  ),
                ),

              ],
            );
          }
        )
      )
    );
  }

  Widget _FourthRow(){
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: EdgeInsets.all(30.0),
        width: double.infinity,
        height: ScreenUtil().setHeight(400),
        child: StreamBuilder(
          stream: bp.fourthRowStream,
          builder: (context, snapshot) {

            if(snapshot.data == null){
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: SizedBox(
                      height: ScreenUtil().setHeight(50),
                      width: ScreenUtil().setWidth(60),
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.red
                      ),
                    ),
                  ),
                ],
              );
            }

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Reports',
                  style: TextStyle(
                    fontSize: ScreenUtil().setSp(45),
                    fontWeight: FontWeight.w800
                  )
                ),
                SizedBox( height: ScreenUtil().setHeight(50)),
                Text(
                  '' + snapshot.data[0].caseName,
                  style: TextStyle(
                    fontSize: ScreenUtil().setSp(45),
                    fontWeight: FontWeight.w800
                  )
                ),  
                SizedBox( height: ScreenUtil().setHeight(4)),
                Badge(
                  badgeColor: Colors.deepPurple,
                  shape: BadgeShape.square,
                  borderRadius: 20,
                  toAnimate: true,
                  badgeContent:
                      Text(snapshot.data[0].statusName == null ? 'No Data' : snapshot.data[0].statusName, style: TextStyle(color: Colors.white)),
                ),                 
                SizedBox( height: ScreenUtil().setHeight(30)),  
                RichText(
                  text: TextSpan(
                    text: 'Action: ',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: ScreenUtil().setSp(font_size),
                      color: Color.fromRGBO(0, 0, 0, 1)
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' ${snapshot.data[0].raName}',
                        style: TextStyle(
                          fontWeight: FontWeight.w300
                        )
                      ),
                    ],
                  )
                ),
                
              ],
            );
          }
        )
      )
    );
  }
}