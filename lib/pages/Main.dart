import 'package:capstone/pages/tabs/Profile.dart';
import 'package:capstone/pages/tabs/Report.dart';
import 'package:capstone/pages/tabs/Settings.dart';
import 'package:capstone/pages/tabs/Subjects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/fa_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:capstone/pages/tabs/Dashboard.dart';

class Main extends StatelessWidget{
  final Dashboard dashboard = Dashboard();
  final Profile profile = Profile();
  final Report report = Report();
  final Settings settings = Settings();
  final Subjects subject = Subjects();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    // TODO: implement build
    return WillPopScope(
        onWillPop: () {
          Navigator.pop(context, false);

          return Future.value(false);
        },
        child: MaterialApp(
        home: DefaultTabController(
          length: 5,
          child: Scaffold(
            appBar: _AppBar(),
            body: TabBarView(
              children: <Widget>[
                dashboard,   
                profile,
                subject,
                report,
                settings
              ],
            ),
          ),
        ),
      ),
    );
  }
  
  Widget _AppBar(){ 
    return AppBar(
      title: Text('SIMS'),
      bottom: TabBar(
        tabs: <Widget>[
          Tab(icon: FaIcon(FontAwesomeIcons.home)),
          Tab(icon: FaIcon(FontAwesomeIcons.user)),
          Tab(icon: FaIcon(FontAwesomeIcons.book)),
          Tab(icon: FaIcon(FontAwesomeIcons.flag)),
          Tab(icon: FaIcon(FontAwesomeIcons.bars)),
        ],
      )
    );
  }
}

  