class LoginRequestModel {
  LoginRequestModel({
    this.username,
    this.password,
    this.peserta,
  });
  late String? username;
  late String? password;
  late String? peserta;

  LoginRequestModel.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    password = json['password'];
    peserta = json['peserta'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['username'] = username;
    _data['password'] = password;
    _data['peserta'] = peserta;
    // _data['username'] = "bidan1";
    // _data['password'] = "asdasdasd";
    // _data['peserta'] = "klien";
    return _data;
  }
}
