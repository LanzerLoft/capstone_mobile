import 'package:capstone/bloc/bloc.dart';
import 'package:capstone/repository/LoginRepo.dart';
import 'package:capstone/validations/LoginValidate.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc  extends Object with LoginValidate implements Bloc{
  final _repo = LoginRepo();

  final _user = BehaviorSubject<String>();
  final _pwd = BehaviorSubject<String>();

  Stream<String> get epnStream => _user.stream.transform();
  Stream<String> get pwdStream => _pwd.stream.transform();
  
  @override
  void dispose() {
    // TODO: implement dispose
  } 
}