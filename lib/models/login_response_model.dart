import 'dart:convert';

LoginResponseModel loginResponseJson(String str) =>
    LoginResponseModel.fromJson(json.decode(str));

class LoginResponseModel {
  LoginResponseModel({
    required this.message,
    required this.data,
  });
  late final String message;
  late final Data data;

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    if (json['status'] == 200) {
      message = "sucess";
      print(json['response'][0]);
      data = Data.fromJson(json['response'][0]);
    } else {
      message = "error";
      data = Data.fromJson(json['response']);
    }
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['message'] = message;
    _data['data'] = data.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.username,
    required this.email,
    // required this.date,
    // required this.id,
    // required this.token,
  });
  late final String username;
  late final String email;
  // late final String date;
  // late final String id;
  // late final String token;

  Data.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    email = json['email'];
    // // date = json['date'];
    // id = json['id'];
    // // token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['username'] = username;
    _data['email'] = email;
    // // _data['date'] = date;
    // _data['id'] = id;
    // // _data['token'] = token;
    return _data;
  }
}
