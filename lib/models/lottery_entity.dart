import 'package:guolo_app/generated/json/base/json_field.dart';
import 'package:guolo_app/generated/json/lottery_entity.g.dart';
import 'dart:convert';
export 'package:guolo_app/generated/json/lottery_entity.g.dart';

@JsonSerializable()
class LotteryEntity {
	String? id;
	String? name;
	String? startedDate;
	String? endDate;
	LotteryAdmin? admin;
	double? cashPrize;
	String? status;
	String? hour;
	List<LotteryTickets>? tickets;

	LotteryEntity();

	factory LotteryEntity.fromJson(Map<String, dynamic> json) => $LotteryEntityFromJson(json);

	Map<String, dynamic> toJson() => $LotteryEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class LotteryAdmin {
	String? id;
	String? createdAt;
	String? name;
	String? password;
	String? role;
	String? email;

	LotteryAdmin();

	factory LotteryAdmin.fromJson(Map<String, dynamic> json) => $LotteryAdminFromJson(json);

	Map<String, dynamic> toJson() => $LotteryAdminToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class LotteryTickets {
	int? id;
	dynamic number;
	double? price;
	String? status;

	LotteryTickets();

	factory LotteryTickets.fromJson(Map<String, dynamic> json) => $LotteryTicketsFromJson(json);

	Map<String, dynamic> toJson() => $LotteryTicketsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}