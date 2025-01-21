import 'Role.dart';

class User {
  String? lastname;
  String? firstname;
  int? balance;
  String? role;
  String? email;
  String? password;
  String? id;
  num? phone;
  String? password_confirmation;

  User.fromJson(Map<String, dynamic> json) {
    lastname = json['name'];
    email = json['email'];
    password = json['password'];
    id = json['id'];
    phone = json['phone'];
    role = json['role'];
    balance = json['balance'];
    firstname = json['nfirstname'];

  }

  Map<String, dynamic> toJson() {
    return {
      'name': lastname,
      'email': email,
      'password': password,
      'id': id,
      'phone': phone,
      'role': role.toString(),
      'balance': balance,
      'firstname': firstname,
      'password_confirmation': password
    };
  }

  User(
      {this.lastname,
      this.email,
      this.password,
      this.id,
      this.phone,
      this.role,
      this.balance,
      this.firstname});
}
