import 'package:guolo_app/generated/json/base/json_field.dart';
import 'package:guolo_app/generated/json/payment_request_entity.g.dart';
import 'dart:convert';
export 'package:guolo_app/generated/json/payment_request_entity.g.dart';

@JsonSerializable()
class PaymentRequestEntity {
	String? id = '';
	PaymentRequestIdLottery? idLottery;
	PaymentRequestIdUser? idUser;
	String? name = '';
	String? account = '';
	String? banck = '';

	PaymentRequestEntity();

	factory PaymentRequestEntity.fromJson(Map<String, dynamic> json) => $PaymentRequestEntityFromJson(json);

	Map<String, dynamic> toJson() => $PaymentRequestEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PaymentRequestIdLottery {
	String? id = '';
	String? name = '';
	String? startedDate = '';
	String? endDate = '';
	PaymentRequestIdLotteryAdmin? admin;
	double? cashPrize;
	String? status = '';
	String? hour = '';
	List<PaymentRequestIdLotteryTickets>? tickets = [];

	PaymentRequestIdLottery();

	factory PaymentRequestIdLottery.fromJson(Map<String, dynamic> json) => $PaymentRequestIdLotteryFromJson(json);

	Map<String, dynamic> toJson() => $PaymentRequestIdLotteryToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PaymentRequestIdLotteryAdmin {
	String? id = '';
	String? createdAt = '';
	String? name = '';
	String? password = '';
	String? role = '';
	String? email = '';

	PaymentRequestIdLotteryAdmin();

	factory PaymentRequestIdLotteryAdmin.fromJson(Map<String, dynamic> json) => $PaymentRequestIdLotteryAdminFromJson(json);

	Map<String, dynamic> toJson() => $PaymentRequestIdLotteryAdminToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PaymentRequestIdLotteryTickets {
	String? id = '';
	int? number = 0;
	double? price;
	String? status = '';
	bool? winner = false;

	PaymentRequestIdLotteryTickets();

	factory PaymentRequestIdLotteryTickets.fromJson(Map<String, dynamic> json) => $PaymentRequestIdLotteryTicketsFromJson(json);

	Map<String, dynamic> toJson() => $PaymentRequestIdLotteryTicketsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PaymentRequestIdUser {
	String? id = '';
	String? createdAt = '';
	String? name = '';
	String? password = '';
	String? role = '';
	String? email = '';

	PaymentRequestIdUser();

	factory PaymentRequestIdUser.fromJson(Map<String, dynamic> json) => $PaymentRequestIdUserFromJson(json);

	Map<String, dynamic> toJson() => $PaymentRequestIdUserToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}