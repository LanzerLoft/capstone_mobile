import 'package:capstone/bloc/bloc.dart';
import 'package:capstone/repository/RProfile.dart';
import 'package:capstone/shared_preferences/spLogin.dart';
import 'package:capstone/utils/url.dart';
import 'package:intl/intl.dart';
import 'package:rxdart/rxdart.dart';

class BProfile implements Bloc{
  final Url url = Url();
  final _repo = RProfile();

  final _first = BehaviorSubject();
  final _second = BehaviorSubject();
  final _third = BehaviorSubject();
  final _fourth = BehaviorSubject();

  Observable get firstRowStream => _first.stream; 
  Observable get secondRowStream => _second.stream; 
  Observable get thirdRowStream => _third.stream; 
  Observable get fourthRowStream => _fourth.stream; 

  fetchData() async { 
    await SpLogin.getToken().then((token) async{
      final datas = await _repo.getProfile(token);
      final report = await _repo.getReport(token);
      final subject = await _repo.getSubject(token);

      _second.sink.add(datas.data);
      final sur = _second.value[0].surName;
      final first = _second.value[0].firstName;
      final middle = _second.value[0].middleName ;
      final idNumber = DateFormat('yy').format(DateTime.parse(_second.value[0].dateCreated)) + '-' +_second.value[0].courseAbbv + '-' + _second.value[0].idNumber;
      final course = _second.value[0].courseName;
      final imgPath = url.uploads +  _second.value[0].imgPath ;
      var list = new List(4);

      list[0] = sur + ', ' + first + ' ' + middle;
      list[1] = course;
      list[2] = idNumber;
      list[3] = _second.value[0].imgPath == '' ?  '' : imgPath ;

      _first.sink.add(list);
      _third.sink.add(subject.data);
      _fourth.sink.add(report.data);   

    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _first.close();
    _second.close();
  } 
}

final bp = BProfile();
