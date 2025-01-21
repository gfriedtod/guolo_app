import 'package:guolo_app/generated/json/base/json_convert_content.dart';
import 'package:guolo_app/models/lottery_entity.dart';

LotteryEntity $LotteryEntityFromJson(Map<String, dynamic> json) {
  final LotteryEntity lotteryEntity = LotteryEntity();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    lotteryEntity.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    lotteryEntity.name = name;
  }
  final String? startedDate = jsonConvert.convert<String>(json['startedDate']);
  if (startedDate != null) {
    lotteryEntity.startedDate = startedDate;
  }
  final String? endDate = jsonConvert.convert<String>(json['endDate']);
  if (endDate != null) {
    lotteryEntity.endDate = endDate;
  }
  final LotteryAdmin? admin = jsonConvert.convert<LotteryAdmin>(json['admin']);
  if (admin != null) {
    lotteryEntity.admin = admin;
  }
  final double? appPrize = jsonConvert.convert<double>(json['appPrize']);
  if (appPrize != null) {
    lotteryEntity.appPrize = appPrize;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    lotteryEntity.status = status;
  }
  final String? hour = jsonConvert.convert<String>(json['hour']);
  if (hour != null) {
    lotteryEntity.hour = hour;
  }
  final List<LotteryTickets>? tickets = (json['tickets'] as List<dynamic>?)
      ?.map(
          (e) => jsonConvert.convert<LotteryTickets>(e) as LotteryTickets)
      .toList();
  if (tickets != null) {
    lotteryEntity.tickets = tickets;
  }
  return lotteryEntity;
}

Map<String, dynamic> $LotteryEntityToJson(LotteryEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['startedDate'] = entity.startedDate;
  data['endDate'] = entity.endDate;
  data['admin'] = entity.admin?.toJson();
  data['appPrize'] = entity.appPrize;
  data['status'] = entity.status;
  data['hour'] = entity.hour;
  data['tickets'] = entity.tickets?.map((v) => v.toJson()).toList();
  return data;
}

extension LotteryEntityExtension on LotteryEntity {
  LotteryEntity copyWith({
    String? id,
    String? name,
    String? startedDate,
    String? endDate,
    LotteryAdmin? admin,
    double? appPrize,
    String? status,
    String? hour,
    List<LotteryTickets>? tickets,
  }) {
    return LotteryEntity()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..startedDate = startedDate ?? this.startedDate
      ..endDate = endDate ?? this.endDate
      ..admin = admin ?? this.admin
      ..appPrize = appPrize ?? this.appPrize
      ..status = status ?? this.status
      ..hour = hour ?? this.hour
      ..tickets = tickets ?? this.tickets;
  }
}

LotteryAdmin $LotteryAdminFromJson(Map<String, dynamic> json) {
  final LotteryAdmin lotteryAdmin = LotteryAdmin();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    lotteryAdmin.id = id;
  }
  final String? createdAt = jsonConvert.convert<String>(json['createdAt']);
  if (createdAt != null) {
    lotteryAdmin.createdAt = createdAt;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    lotteryAdmin.name = name;
  }
  final String? password = jsonConvert.convert<String>(json['password']);
  if (password != null) {
    lotteryAdmin.password = password;
  }
  final String? role = jsonConvert.convert<String>(json['role']);
  if (role != null) {
    lotteryAdmin.role = role;
  }
  final String? email = jsonConvert.convert<String>(json['email']);
  if (email != null) {
    lotteryAdmin.email = email;
  }
  return lotteryAdmin;
}

Map<String, dynamic> $LotteryAdminToJson(LotteryAdmin entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['createdAt'] = entity.createdAt;
  data['name'] = entity.name;
  data['password'] = entity.password;
  data['role'] = entity.role;
  data['email'] = entity.email;
  return data;
}

extension LotteryAdminExtension on LotteryAdmin {
  LotteryAdmin copyWith({
    String? id,
    String? createdAt,
    String? name,
    String? password,
    String? role,
    String? email,
  }) {
    return LotteryAdmin()
      ..id = id ?? this.id
      ..createdAt = createdAt ?? this.createdAt
      ..name = name ?? this.name
      ..password = password ?? this.password
      ..role = role ?? this.role
      ..email = email ?? this.email;
  }
}

LotteryTickets $LotteryTicketsFromJson(Map<String, dynamic> json) {
  final LotteryTickets lotteryTickets = LotteryTickets();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    lotteryTickets.id = id;
  }
  final dynamic number = json['number'];
  if (number != null) {
    lotteryTickets.number = number;
  }
  final double? price = jsonConvert.convert<double>(json['price']);
  if (price != null) {
    lotteryTickets.price = price;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    lotteryTickets.status = status;
  }
  return lotteryTickets;
}

Map<String, dynamic> $LotteryTicketsToJson(LotteryTickets entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['number'] = entity.number;
  data['price'] = entity.price;
  data['status'] = entity.status;
  return data;
}

extension LotteryTicketsExtension on LotteryTickets {
  LotteryTickets copyWith({
    int? id,
    dynamic number,
    double? price,
    String? status,
  }) {
    return LotteryTickets()
      ..id = id ?? this.id
      ..number = number ?? this.number
      ..price = price ?? this.price
      ..status = status ?? this.status;
  }
}