
class Data {
  String id;
  String user;

  Data({this.id, this.user});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    user = json['user'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user'] = this.user;
    return data;
  }
}