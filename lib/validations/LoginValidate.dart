import 'dart:async';

class LoginValidate { 

  final userVal = StreamTransformer<String, String>.fromHandlers(
    handleData: (user, sink){
      final _pattern = r'(^(?:[+0]9)?[0-9]{­10,12}$)';
      final _regExp = new RegExp(_pattern);

      if(user.length == 0){
        sink.addError('Please Enter your ID Number');

      // }else if(!_regExp.hasMatch(user)){
      //   sink.addError('Enter Valid Number');

      // 
      }else{
        sink.add(user);    
      }
    }
  );

  final pwdVal = StreamTransformer<String, String>.fromHandlers(
    handleData: (pwd, sink){
      
      if(pwd.length > 6){
        sink.add(pwd);
      }else{
        sink.addError('Password too Short');
      }
    }
  );  
}