import 'package:guolo_app/generated/json/base/json_convert_content.dart';
import 'package:guolo_app/models/lottery_ticket_entity.dart';

LotteryTicketEntity $LotteryTicketEntityFromJson(Map<String, dynamic> json) {
  final LotteryTicketEntity lotteryTicketEntity = LotteryTicketEntity();
  final LotteryTicketLotterieDto? lotterieDto = jsonConvert.convert<
      LotteryTicketLotterieDto>(json['lotterieDto']);
  if (lotterieDto != null) {
    lotteryTicketEntity.lotterieDto = lotterieDto;
  }
  final List<LotteryTicketTickets>? tickets = (json['tickets'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<LotteryTicketTickets>(e) as LotteryTicketTickets)
      .toList();
  if (tickets != null) {
    lotteryTicketEntity.tickets = tickets;
  }
  return lotteryTicketEntity;
}

Map<String, dynamic> $LotteryTicketEntityToJson(LotteryTicketEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['lotterieDto'] = entity.lotterieDto?.toJson();
  data['tickets'] = entity.tickets?.map((v) => v.toJson()).toList();
  return data;
}

extension LotteryTicketEntityExtension on LotteryTicketEntity {
  LotteryTicketEntity copyWith({
    LotteryTicketLotterieDto? lotterieDto,
    List<LotteryTicketTickets>? tickets,
  }) {
    return LotteryTicketEntity()
      ..lotterieDto = lotterieDto ?? this.lotterieDto
      ..tickets = tickets ?? this.tickets;
  }
}

LotteryTicketLotterieDto $LotteryTicketLotterieDtoFromJson(
    Map<String, dynamic> json) {
  final LotteryTicketLotterieDto lotteryTicketLotterieDto = LotteryTicketLotterieDto();
  final dynamic id = json['id'];
  if (id != null) {
    lotteryTicketLotterieDto.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    lotteryTicketLotterieDto.name = name;
  }
  final String? startedDate = jsonConvert.convert<String>(json['startedDate']);
  if (startedDate != null) {
    lotteryTicketLotterieDto.startedDate = startedDate;
  }
  final String? endDate = jsonConvert.convert<String>(json['endDate']);
  if (endDate != null) {
    lotteryTicketLotterieDto.endDate = endDate;
  }
  final LotteryTicketLotterieDtoAdmin? admin = jsonConvert.convert<
      LotteryTicketLotterieDtoAdmin>(json['admin']);
  if (admin != null) {
    lotteryTicketLotterieDto.admin = admin;
  }
  final double? cashPrize = jsonConvert.convert<double>(json['cashPrize']);
  if (cashPrize != null) {
    lotteryTicketLotterieDto.cashPrize = cashPrize;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    lotteryTicketLotterieDto.status = status;
  }
  final dynamic hour = json['hour'];
  if (hour != null) {
    lotteryTicketLotterieDto.hour = hour;
  }
  final dynamic tickets = json['tickets'];
  if (tickets != null) {
    lotteryTicketLotterieDto.tickets = tickets;
  }
  return lotteryTicketLotterieDto;
}

Map<String, dynamic> $LotteryTicketLotterieDtoToJson(
    LotteryTicketLotterieDto entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['startedDate'] = entity.startedDate;
  data['endDate'] = entity.endDate;
  data['admin'] = entity.admin?.toJson();
  data['cashPrize'] = entity.cashPrize;
  data['status'] = entity.status;
  data['hour'] = entity.hour;
  data['tickets'] = entity.tickets;
  return data;
}

extension LotteryTicketLotterieDtoExtension on LotteryTicketLotterieDto {
  LotteryTicketLotterieDto copyWith({
    dynamic id,
    String? name,
    String? startedDate,
    String? endDate,
    LotteryTicketLotterieDtoAdmin? admin,
    double? cashPrize,
    String? status,
    dynamic hour,
    dynamic tickets,
  }) {
    return LotteryTicketLotterieDto()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..startedDate = startedDate ?? this.startedDate
      ..endDate = endDate ?? this.endDate
      ..admin = admin ?? this.admin
      ..cashPrize = cashPrize ?? this.cashPrize
      ..status = status ?? this.status
      ..hour = hour ?? this.hour
      ..tickets = tickets ?? this.tickets;
  }
}

LotteryTicketLotterieDtoAdmin $LotteryTicketLotterieDtoAdminFromJson(
    Map<String, dynamic> json) {
  final LotteryTicketLotterieDtoAdmin lotteryTicketLotterieDtoAdmin = LotteryTicketLotterieDtoAdmin();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    lotteryTicketLotterieDtoAdmin.id = id;
  }
  final String? createdAt = jsonConvert.convert<String>(json['createdAt']);
  if (createdAt != null) {
    lotteryTicketLotterieDtoAdmin.createdAt = createdAt;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    lotteryTicketLotterieDtoAdmin.name = name;
  }
  final String? password = jsonConvert.convert<String>(json['password']);
  if (password != null) {
    lotteryTicketLotterieDtoAdmin.password = password;
  }
  final String? role = jsonConvert.convert<String>(json['role']);
  if (role != null) {
    lotteryTicketLotterieDtoAdmin.role = role;
  }
  final String? email = jsonConvert.convert<String>(json['email']);
  if (email != null) {
    lotteryTicketLotterieDtoAdmin.email = email;
  }
  return lotteryTicketLotterieDtoAdmin;
}

Map<String, dynamic> $LotteryTicketLotterieDtoAdminToJson(
    LotteryTicketLotterieDtoAdmin entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['createdAt'] = entity.createdAt;
  data['name'] = entity.name;
  data['password'] = entity.password;
  data['role'] = entity.role;
  data['email'] = entity.email;
  return data;
}

extension LotteryTicketLotterieDtoAdminExtension on LotteryTicketLotterieDtoAdmin {
  LotteryTicketLotterieDtoAdmin copyWith({
    String? id,
    String? createdAt,
    String? name,
    String? password,
    String? role,
    String? email,
  }) {
    return LotteryTicketLotterieDtoAdmin()
      ..id = id ?? this.id
      ..createdAt = createdAt ?? this.createdAt
      ..name = name ?? this.name
      ..password = password ?? this.password
      ..role = role ?? this.role
      ..email = email ?? this.email;
  }
}

LotteryTicketTickets $LotteryTicketTicketsFromJson(Map<String, dynamic> json) {
  final LotteryTicketTickets lotteryTicketTickets = LotteryTicketTickets();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    lotteryTicketTickets.id = id;
  }
  final int? number = jsonConvert.convert<int>(json['number']);
  if (number != null) {
    lotteryTicketTickets.number = number;
  }
  final dynamic lotterie = json['lotterie'];
  if (lotterie != null) {
    lotteryTicketTickets.lotterie = lotterie;
  }
  final double? price = jsonConvert.convert<double>(json['price']);
  if (price != null) {
    lotteryTicketTickets.price = price;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    lotteryTicketTickets.status = status;
  }
  final bool? winner = jsonConvert.convert<bool>(json['winner']);
  if (winner != null) {
    lotteryTicketTickets.winner = winner;
  }
  return lotteryTicketTickets;
}

Map<String, dynamic> $LotteryTicketTicketsToJson(LotteryTicketTickets entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['number'] = entity.number;
  data['lotterie'] = entity.lotterie;
  data['price'] = entity.price;
  data['status'] = entity.status;
  data['winner'] = entity.winner;
  return data;
}

extension LotteryTicketTicketsExtension on LotteryTicketTickets {
  LotteryTicketTickets copyWith({
    String? id,
    int? number,
    dynamic lotterie,
    double? price,
    String? status,
    bool? winner,
  }) {
    return LotteryTicketTickets()
      ..id = id ?? this.id
      ..number = number ?? this.number
      ..lotterie = lotterie ?? this.lotterie
      ..price = price ?? this.price
      ..status = status ?? this.status
      ..winner = winner ?? this.winner;
  }
}