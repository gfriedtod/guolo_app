import 'package:guolo_app/generated/json/base/json_field.dart';
import 'package:guolo_app/generated/json/lottery_ticket_entity.g.dart';
import 'dart:convert';
export 'package:guolo_app/generated/json/lottery_ticket_entity.g.dart';

@JsonSerializable()
class LotteryTicketEntity {
	LotteryTicketLotterieDto? lotterieDto;

	LotteryTicketEntity();

	factory LotteryTicketEntity.fromJson(Map<String, dynamic> json) => $LotteryTicketEntityFromJson(json);

	Map<String, dynamic> toJson() => $LotteryTicketEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class LotteryTicketLotterieDto {
	String? id;
	String? name;
	String? startedDate;
	String? endDate;
	LotteryTicketLotterieDtoAdmin? admin;
	double? cashPrize;
	String? status;
	dynamic hour;
	List<LotteryTicketLotterieDtoTickets>? tickets;

	LotteryTicketLotterieDto();

	factory LotteryTicketLotterieDto.fromJson(Map<String, dynamic> json) => $LotteryTicketLotterieDtoFromJson(json);

	Map<String, dynamic> toJson() => $LotteryTicketLotterieDtoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class LotteryTicketLotterieDtoAdmin {
	String? id;
	String? createdAt;
	String? name;
	String? password;
	String? role;
	String? email;

	LotteryTicketLotterieDtoAdmin();

	factory LotteryTicketLotterieDtoAdmin.fromJson(Map<String, dynamic> json) => $LotteryTicketLotterieDtoAdminFromJson(json);

	Map<String, dynamic> toJson() => $LotteryTicketLotterieDtoAdminToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class LotteryTicketLotterieDtoTickets {
	String? id;
	int? number;
	double? price;
	String? status;
	bool? winner;

	LotteryTicketLotterieDtoTickets();

	factory LotteryTicketLotterieDtoTickets.fromJson(Map<String, dynamic> json) => $LotteryTicketLotterieDtoTicketsFromJson(json);

	Map<String, dynamic> toJson() => $LotteryTicketLotterieDtoTicketsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}