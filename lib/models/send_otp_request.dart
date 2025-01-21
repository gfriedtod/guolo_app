/// YApi QuickType插件生成，具体参考文档:https://plugins.jetbrains.com/plugin/18847-yapi-quicktype/documentation

import 'dart:convert';

SendOtpRequest sendOtpRequestFromJson(String str) => SendOtpRequest.fromJson(json.decode(str));

String sendOtpRequestToJson(SendOtpRequest data) => json.encode(data.toJson());

class SendOtpRequest {
    SendOtpRequest({
        required this.email,
    });

    String email;

    factory SendOtpRequest.fromJson(Map<dynamic, dynamic> json) => SendOtpRequest(
        email: json["email"],
    );

    Map<dynamic, dynamic> toJson() => {
        "email": email,
    };
}
