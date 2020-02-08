import 'package:capstone/bloc/bloc.dart';
import 'package:capstone/repository/LoginRepo.dart';
import 'package:capstone/validations/LoginValidate.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc  extends Object with LoginValidate implements Bloc{
  final _repo = LoginRepo();

  final _user = BehaviorSubject<String>();
  final _pwd = BehaviorSubject<String>();

  Stream<String> get epnStream => _user.stream.transform(userVal);
  Stream<String> get pwdStream => _pwd.stream.transform(pwdVal);
  Function(String) get epnSink => _user.sink.add;
  Function(String) get pwdSink => _pwd.sink.add;
  Stream<bool> get validSubmit => Observable.combineLatest2(epnStream, pwdStream , (e, p) => true);


  @override
  void dispose() {
    // TODO: implement dispose
  } 
}