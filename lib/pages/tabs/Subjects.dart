import 'package:badges/badges.dart';
import 'package:capstone/bloc/BProfile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Subjects extends StatelessWidget{
  @override

  final font_size = 32.0;
  Widget build(BuildContext context) {
    // TODO: implement build
    return StreamBuilder(
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
                
        return ListView.builder(
          itemCount: snapshot.data.length,
          itemBuilder: (BuildContext context, index){
              return _buildBody(snapshot.data[index]);
          },
        );
      }
    );
  }

  Widget _buildBody(data){
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: EdgeInsets.all(30.0),
        width: double.infinity,
        height: ScreenUtil().setHeight(400),
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

            final String faculty_name = data.facultyName;
            final String subject_code  = data.subjectCode;
            final String subject_name = data.subjectName;
            final String subject = subject_code + ' - ' + subject_name;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
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

}