import 'package:guolo_app/generated/json/base/json_field.dart';
import 'package:guolo_app/generated/json/ticket_entity.g.dart';
import 'dart:convert';

import 'package:guolo_app/models/lottery_entity.dart';
export 'package:guolo_app/generated/json/ticket_entity.g.dart';

@JsonSerializable()
class TicketEntity {
	String? id;
	dynamic number;
	String? createdAt;
	LotteryEntity? lotterie;
	double? price;
	String? status;

	TicketEntity();

	factory TicketEntity.fromJson(Map<String, dynamic> json) => $TicketEntityFromJson(json);

	Map<String, dynamic> toJson() => $TicketEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class TicketLotterie {
	String? id;
	String? createdAt;
	String? name;
	String? startedDate;
	String? endDate;
	TicketLotterieAdmin? admin;
	String? status;

	TicketLotterie();

	factory TicketLotterie.fromJson(Map<String, dynamic> json) => $TicketLotterieFromJson(json);

	Map<String, dynamic> toJson() => $TicketLotterieToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class TicketLotterieAdmin {
	String? id;
	String? createdAt;
	String? name;
	String? password;
	String? role;
	String? email;

	TicketLotterieAdmin();

	factory TicketLotterieAdmin.fromJson(Map<String, dynamic> json) => $TicketLotterieAdminFromJson(json);

	Map<String, dynamic> toJson() => $TicketLotterieAdminToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}