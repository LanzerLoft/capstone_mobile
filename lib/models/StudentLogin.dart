class StudentLogin { 
  String _status;
  String _token; 
  Data _data; 

  StudentLogin.fromJson(Map<String, dynamic> parsedJson){
    _status = parsedJson['status'];
    _token = parsedJson['status'];
    _data = Data.fromJson(parsedJson['status']);
  }

  String get status => _status;
  String get token => _token;
  Data get data => _data;
  
}

class Data {
  String _id;
  String _user;

  Data.fromJson(Map<String, dynamic> json){
    _id = json['id'];
    _user = json['user'];
  }

  String get id => _id;
  String get user => _user;
}