import 'package:badges/badges.dart';
import 'package:capstone/bloc/BProfile.dart';
import 'package:capstone/pages/add_report.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Report extends StatelessWidget{
  final font_size = 32.0;
  @override
  Widget build(BuildContext context) {
      // TODO: implement build
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          tooltip: 'Increment Counter',
          child: const Icon(Icons.add), 
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => AddReport()
              )
            );
          },
        ),
        body: StreamBuilder(
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
                  
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context, index){
                return _buildBody(snapshot.data[index]);
            },
          );
        }
      ),
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
          stream: bp.fourthRowStream,
          builder: (context, snapshot) {

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
                  '' + data.caseName,
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
                      Text(data.statusName == null ? 'No Data' : data.statusName, style: TextStyle(color: Colors.white)),
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
                        text: ' ${data.raName}',
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