import 'package:guolo_app/generated/json/base/json_field.dart';
import 'package:guolo_app/generated/json/payment_proof_entity.g.dart';
import 'dart:convert';
export 'package:guolo_app/generated/json/payment_proof_entity.g.dart';

@JsonSerializable()
class PaymentProofEntity {
	String? id;
	String? link;
	PaymentProofIdLottery? idLottery;

	PaymentProofEntity();

	factory PaymentProofEntity.fromJson(Map<String, dynamic> json) => $PaymentProofEntityFromJson(json);

	Map<String, dynamic> toJson() => $PaymentProofEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PaymentProofIdLottery {
	String? id;
	String? name;
	String? startedDate;
	String? endDate;
	PaymentProofIdLotteryAdmin? admin;
	double? cashPrize;
	String? status;
	String? hour;
	List<PaymentProofIdLotteryTickets>? tickets;

	PaymentProofIdLottery();

	factory PaymentProofIdLottery.fromJson(Map<String, dynamic> json) => $PaymentProofIdLotteryFromJson(json);

	Map<String, dynamic> toJson() => $PaymentProofIdLotteryToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PaymentProofIdLotteryAdmin {
	String? id;
	String? createdAt;
	String? name;
	String? email;
	String? password;
	String? role;

	PaymentProofIdLotteryAdmin();

	factory PaymentProofIdLotteryAdmin.fromJson(Map<String, dynamic> json) => $PaymentProofIdLotteryAdminFromJson(json);

	Map<String, dynamic> toJson() => $PaymentProofIdLotteryAdminToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class PaymentProofIdLotteryTickets {
	dynamic id;
	dynamic number;
	dynamic price;
	dynamic status;
	bool? winner;

	PaymentProofIdLotteryTickets();

	factory PaymentProofIdLotteryTickets.fromJson(Map<String, dynamic> json) => $PaymentProofIdLotteryTicketsFromJson(json);

	Map<String, dynamic> toJson() => $PaymentProofIdLotteryTicketsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}