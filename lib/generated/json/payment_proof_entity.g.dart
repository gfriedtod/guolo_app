import 'package:guolo_app/generated/json/base/json_convert_content.dart';
import 'package:guolo_app/models/payment_proof_entity.dart';

PaymentProofEntity $PaymentProofEntityFromJson(Map<String, dynamic> json) {
  final PaymentProofEntity paymentProofEntity = PaymentProofEntity();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    paymentProofEntity.id = id;
  }
  final String? link = jsonConvert.convert<String>(json['link']);
  if (link != null) {
    paymentProofEntity.link = link;
  }
  final PaymentProofIdLottery? idLottery = jsonConvert.convert<
      PaymentProofIdLottery>(json['idLottery']);
  if (idLottery != null) {
    paymentProofEntity.idLottery = idLottery;
  }
  final dynamic name = json['name'];
  if (name != null) {
    paymentProofEntity.name = name;
  }
  return paymentProofEntity;
}

Map<String, dynamic> $PaymentProofEntityToJson(PaymentProofEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['link'] = entity.link;
  data['idLottery'] = entity.idLottery?.toJson();
  data['name'] = entity.name;
  return data;
}

extension PaymentProofEntityExtension on PaymentProofEntity {
  PaymentProofEntity copyWith({
    String? id,
    String? link,
    PaymentProofIdLottery? idLottery,
    dynamic name,
  }) {
    return PaymentProofEntity()
      ..id = id ?? this.id
      ..link = link ?? this.link
      ..idLottery = idLottery ?? this.idLottery
      ..name = name ?? this.name;
  }
}

PaymentProofIdLottery $PaymentProofIdLotteryFromJson(
    Map<String, dynamic> json) {
  final PaymentProofIdLottery paymentProofIdLottery = PaymentProofIdLottery();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    paymentProofIdLottery.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    paymentProofIdLottery.name = name;
  }
  final String? startedDate = jsonConvert.convert<String>(json['startedDate']);
  if (startedDate != null) {
    paymentProofIdLottery.startedDate = startedDate;
  }
  final String? endDate = jsonConvert.convert<String>(json['endDate']);
  if (endDate != null) {
    paymentProofIdLottery.endDate = endDate;
  }
  final PaymentProofIdLotteryAdmin? admin = jsonConvert.convert<
      PaymentProofIdLotteryAdmin>(json['admin']);
  if (admin != null) {
    paymentProofIdLottery.admin = admin;
  }
  final double? cashPrize = jsonConvert.convert<double>(json['cashPrize']);
  if (cashPrize != null) {
    paymentProofIdLottery.cashPrize = cashPrize;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    paymentProofIdLottery.status = status;
  }
  final String? hour = jsonConvert.convert<String>(json['hour']);
  if (hour != null) {
    paymentProofIdLottery.hour = hour;
  }
  final List<PaymentProofIdLotteryTickets>? tickets = (json['tickets'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<PaymentProofIdLotteryTickets>(
          e) as PaymentProofIdLotteryTickets).toList();
  if (tickets != null) {
    paymentProofIdLottery.tickets = tickets;
  }
  return paymentProofIdLottery;
}

Map<String, dynamic> $PaymentProofIdLotteryToJson(
    PaymentProofIdLottery entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['startedDate'] = entity.startedDate;
  data['endDate'] = entity.endDate;
  data['admin'] = entity.admin?.toJson();
  data['cashPrize'] = entity.cashPrize;
  data['status'] = entity.status;
  data['hour'] = entity.hour;
  data['tickets'] = entity.tickets?.map((v) => v.toJson()).toList();
  return data;
}

extension PaymentProofIdLotteryExtension on PaymentProofIdLottery {
  PaymentProofIdLottery copyWith({
    String? id,
    String? name,
    String? startedDate,
    String? endDate,
    PaymentProofIdLotteryAdmin? admin,
    double? cashPrize,
    String? status,
    String? hour,
    List<PaymentProofIdLotteryTickets>? tickets,
  }) {
    return PaymentProofIdLottery()
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

PaymentProofIdLotteryAdmin $PaymentProofIdLotteryAdminFromJson(
    Map<String, dynamic> json) {
  final PaymentProofIdLotteryAdmin paymentProofIdLotteryAdmin = PaymentProofIdLotteryAdmin();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    paymentProofIdLotteryAdmin.id = id;
  }
  final String? createdAt = jsonConvert.convert<String>(json['createdAt']);
  if (createdAt != null) {
    paymentProofIdLotteryAdmin.createdAt = createdAt;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    paymentProofIdLotteryAdmin.name = name;
  }
  final String? email = jsonConvert.convert<String>(json['email']);
  if (email != null) {
    paymentProofIdLotteryAdmin.email = email;
  }
  final String? password = jsonConvert.convert<String>(json['password']);
  if (password != null) {
    paymentProofIdLotteryAdmin.password = password;
  }
  final String? role = jsonConvert.convert<String>(json['role']);
  if (role != null) {
    paymentProofIdLotteryAdmin.role = role;
  }
  return paymentProofIdLotteryAdmin;
}

Map<String, dynamic> $PaymentProofIdLotteryAdminToJson(
    PaymentProofIdLotteryAdmin entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['createdAt'] = entity.createdAt;
  data['name'] = entity.name;
  data['email'] = entity.email;
  data['password'] = entity.password;
  data['role'] = entity.role;
  return data;
}

extension PaymentProofIdLotteryAdminExtension on PaymentProofIdLotteryAdmin {
  PaymentProofIdLotteryAdmin copyWith({
    String? id,
    String? createdAt,
    String? name,
    String? email,
    String? password,
    String? role,
  }) {
    return PaymentProofIdLotteryAdmin()
      ..id = id ?? this.id
      ..createdAt = createdAt ?? this.createdAt
      ..name = name ?? this.name
      ..email = email ?? this.email
      ..password = password ?? this.password
      ..role = role ?? this.role;
  }
}

PaymentProofIdLotteryTickets $PaymentProofIdLotteryTicketsFromJson(
    Map<String, dynamic> json) {
  final PaymentProofIdLotteryTickets paymentProofIdLotteryTickets = PaymentProofIdLotteryTickets();
  final dynamic id = json['id'];
  if (id != null) {
    paymentProofIdLotteryTickets.id = id;
  }
  final dynamic number = json['number'];
  if (number != null) {
    paymentProofIdLotteryTickets.number = number;
  }
  final dynamic price = json['price'];
  if (price != null) {
    paymentProofIdLotteryTickets.price = price;
  }
  final dynamic status = json['status'];
  if (status != null) {
    paymentProofIdLotteryTickets.status = status;
  }
  final bool? winner = jsonConvert.convert<bool>(json['winner']);
  if (winner != null) {
    paymentProofIdLotteryTickets.winner = winner;
  }
  return paymentProofIdLotteryTickets;
}

Map<String, dynamic> $PaymentProofIdLotteryTicketsToJson(
    PaymentProofIdLotteryTickets entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['number'] = entity.number;
  data['price'] = entity.price;
  data['status'] = entity.status;
  data['winner'] = entity.winner;
  return data;
}

extension PaymentProofIdLotteryTicketsExtension on PaymentProofIdLotteryTickets {
  PaymentProofIdLotteryTickets copyWith({
    dynamic id,
    dynamic number,
    dynamic price,
    dynamic status,
    bool? winner,
  }) {
    return PaymentProofIdLotteryTickets()
      ..id = id ?? this.id
      ..number = number ?? this.number
      ..price = price ?? this.price
      ..status = status ?? this.status
      ..winner = winner ?? this.winner;
  }
}