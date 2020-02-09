class ErrorStatus { 
  bool _status;
  String _message;

  ErrorStatus.fromJson(Map<String, dynamic> json){
    _status = json['status'];
    _message = json['message'];
  }

  bool get status => _status;
  String get message => _message;
}