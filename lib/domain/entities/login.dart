class Login {
  Login({this.email, this.password});

  String? email;
  String? password;
}

class LoginResponse {
  LoginResponse({this.token});

  String? token;
}
