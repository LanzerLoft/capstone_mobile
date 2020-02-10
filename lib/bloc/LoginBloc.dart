import 'package:capstone/bloc/bloc.dart';
import 'package:capstone/repository/LoginRepo.dart';
import 'package:capstone/shared_preferences/spLogin.dart';
import 'package:capstone/validations/LoginValidate.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc  extends Object with LoginValidate implements Bloc{
  final _repo = LoginRepo();

  final _user = BehaviorSubject<String>();
  final _pwd = BehaviorSubject<String>();
  final button = BehaviorSubject<String>();

  Stream<String> get epnStream => _user.stream.transform(userVal);
  Stream<String> get pwdStream => _pwd.stream.transform(pwdVal);
  Stream<String> get btnStream => _pwd.stream;

  Function(String) get epnSink => _user.sink.add;
  Function(String) get pwdSink => _pwd.sink.add;

  Stream<bool> get validSubmit => Observable.combineLatest2(epnStream, pwdStream , (e, p) => true);

  submit(context) async { 
    Navigator.of(context).pushNamed('/loading');

    await _repo.getCurrent(_user.value, _pwd.value).then((data) async {

      if(data.status == true){
        SpLogin.setToken(data.token);
        Navigator.of(context).pushNamed('/dashboard');
      }else{ 
        print(data.message);
        Navigator.pop(context, false);
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _user.close();
    _pwd.close();
    button.close();
  } 
}

final sl = LoginBloc();
