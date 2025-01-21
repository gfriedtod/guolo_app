import 'package:guolo_app/generated/json/base/json_convert_content.dart';
import 'package:guolo_app/models/ticket_entity.dart';
import 'package:guolo_app/models/lottery_entity.dart';


TicketEntity $TicketEntityFromJson(Map<String, dynamic> json) {
  final TicketEntity ticketEntity = TicketEntity();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    ticketEntity.id = id;
  }
  final dynamic number = json['number'];
  if (number != null) {
    ticketEntity.number = number;
  }
  final String? createdAt = jsonConvert.convert<String>(json['createdAt']);
  if (createdAt != null) {
    ticketEntity.createdAt = createdAt;
  }
  final LotteryEntity? lotterie = jsonConvert.convert<LotteryEntity>(
      json['lotterie']);
  if (lotterie != null) {
    ticketEntity.lotterie = lotterie;
  }
  final double? price = jsonConvert.convert<double>(json['price']);
  if (price != null) {
    ticketEntity.price = price;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    ticketEntity.status = status;
  }
  return ticketEntity;
}

Map<String, dynamic> $TicketEntityToJson(TicketEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['number'] = entity.number;
  data['createdAt'] = entity.createdAt;
  data['lotterie'] = entity.lotterie?.toJson();
  data['price'] = entity.price;
  data['status'] = entity.status;
  return data;
}

extension TicketEntityExtension on TicketEntity {
  TicketEntity copyWith({
    String? id,
    dynamic number,
    String? createdAt,
    LotteryEntity? lotterie,
    double? price,
    String? status,
  }) {
    return TicketEntity()
      ..id = id ?? this.id
      ..number = number ?? this.number
      ..createdAt = createdAt ?? this.createdAt
      ..lotterie = lotterie ?? this.lotterie
      ..price = price ?? this.price
      ..status = status ?? this.status;
  }
}

TicketLotterie $TicketLotterieFromJson(Map<String, dynamic> json) {
  final TicketLotterie ticketLotterie = TicketLotterie();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    ticketLotterie.id = id;
  }
  final String? createdAt = jsonConvert.convert<String>(json['createdAt']);
  if (createdAt != null) {
    ticketLotterie.createdAt = createdAt;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    ticketLotterie.name = name;
  }
  final String? startedDate = jsonConvert.convert<String>(json['startedDate']);
  if (startedDate != null) {
    ticketLotterie.startedDate = startedDate;
  }
  final String? endDate = jsonConvert.convert<String>(json['endDate']);
  if (endDate != null) {
    ticketLotterie.endDate = endDate;
  }
  final TicketLotterieAdmin? admin = jsonConvert.convert<TicketLotterieAdmin>(
      json['admin']);
  if (admin != null) {
    ticketLotterie.admin = admin;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    ticketLotterie.status = status;
  }
  return ticketLotterie;
}

Map<String, dynamic> $TicketLotterieToJson(TicketLotterie entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['createdAt'] = entity.createdAt;
  data['name'] = entity.name;
  data['startedDate'] = entity.startedDate;
  data['endDate'] = entity.endDate;
  data['admin'] = entity.admin?.toJson();
  data['status'] = entity.status;
  return data;
}

extension TicketLotterieExtension on TicketLotterie {
  TicketLotterie copyWith({
    String? id,
    String? createdAt,
    String? name,
    String? startedDate,
    String? endDate,
    TicketLotterieAdmin? admin,
    String? status,
  }) {
    return TicketLotterie()
      ..id = id ?? this.id
      ..createdAt = createdAt ?? this.createdAt
      ..name = name ?? this.name
      ..startedDate = startedDate ?? this.startedDate
      ..endDate = endDate ?? this.endDate
      ..admin = admin ?? this.admin
      ..status = status ?? this.status;
  }
}

TicketLotterieAdmin $TicketLotterieAdminFromJson(Map<String, dynamic> json) {
  final TicketLotterieAdmin ticketLotterieAdmin = TicketLotterieAdmin();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    ticketLotterieAdmin.id = id;
  }
  final String? createdAt = jsonConvert.convert<String>(json['createdAt']);
  if (createdAt != null) {
    ticketLotterieAdmin.createdAt = createdAt;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    ticketLotterieAdmin.name = name;
  }
  final String? password = jsonConvert.convert<String>(json['password']);
  if (password != null) {
    ticketLotterieAdmin.password = password;
  }
  final String? role = jsonConvert.convert<String>(json['role']);
  if (role != null) {
    ticketLotterieAdmin.role = role;
  }
  final String? email = jsonConvert.convert<String>(json['email']);
  if (email != null) {
    ticketLotterieAdmin.email = email;
  }
  return ticketLotterieAdmin;
}

Map<String, dynamic> $TicketLotterieAdminToJson(TicketLotterieAdmin entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['createdAt'] = entity.createdAt;
  data['name'] = entity.name;
  data['password'] = entity.password;
  data['role'] = entity.role;
  data['email'] = entity.email;
  return data;
}

extension TicketLotterieAdminExtension on TicketLotterieAdmin {
  TicketLotterieAdmin copyWith({
    String? id,
    String? createdAt,
    String? name,
    String? password,
    String? role,
    String? email,
  }) {
    return TicketLotterieAdmin()
      ..id = id ?? this.id
      ..createdAt = createdAt ?? this.createdAt
      ..name = name ?? this.name
      ..password = password ?? this.password
      ..role = role ?? this.role
      ..email = email ?? this.email;
  }
}