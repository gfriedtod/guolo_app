/// YApi QuickType插件生成，具体参考文档:https://plugins.jetbrains.com/plugin/18847-yapi-quicktype/documentation

import 'dart:convert';

EmailVerified emailVerifiedFromJson(String str) => EmailVerified.fromJson(json.decode(str));

String emailVerifiedToJson(EmailVerified data) => json.encode(data.toJson());

class EmailVerified {
    EmailVerified({
        required this.otp,
        required this.email,
    });

    String otp;
    String email;

    factory EmailVerified.fromJson(Map<dynamic, dynamic> json) => EmailVerified(
        otp: json["otp"],
        email: json["email"],
    );

    Map<dynamic, dynamic> toJson() => {
        "otp": otp,
        "email": email,
    };
}
