import 'package:capstone/bloc/BSettings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/fa_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Settings extends StatelessWidget{
  final int list_height = 120;
  final int font_size = 40;
  final hover_color = Colors.grey[300];
  final icon_color = Colors.blue;
  final box_width = 50.0;
  static const double list_padding = 20.0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    ScreenUtil.init(context);
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            _firstRow(context),
            Divider(
              indent: list_padding,
              endIndent: list_padding ,
            )
          ],
        ),
      ),
    );
  }

  Widget _firstRow(context){
    return Container(
      height: ScreenUtil().setHeight(list_height),
      child: InkWell(
        onTap: (){
          bs.logoutInit(context);;
        },
        highlightColor: hover_color,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: list_padding),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              FaIcon(
                FontAwesomeIcons.signOutAlt,
                color: icon_color,
              ),
              SizedBox(
                width: ScreenUtil().setWidth(box_width),
              ),  
              Text(
                'Logout',
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(font_size),
                  fontWeight: FontWeight.w500
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}