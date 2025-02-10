import 'package:guolo_app/generated/json/base/json_convert_content.dart';
import 'package:guolo_app/models/payment_request_entity.dart';

PaymentRequestEntity $PaymentRequestEntityFromJson(Map<String, dynamic> json) {
  final PaymentRequestEntity paymentRequestEntity = PaymentRequestEntity();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    paymentRequestEntity.id = id;
  }
  final PaymentRequestIdLottery? idLottery = jsonConvert.convert<
      PaymentRequestIdLottery>(json['idLottery']);
  if (idLottery != null) {
    paymentRequestEntity.idLottery = idLottery;
  }
  final PaymentRequestIdUser? idUser = jsonConvert.convert<
      PaymentRequestIdUser>(json['idUser']);
  if (idUser != null) {
    paymentRequestEntity.idUser = idUser;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    paymentRequestEntity.name = name;
  }
  final String? account = jsonConvert.convert<String>(json['account']);
  if (account != null) {
    paymentRequestEntity.account = account;
  }
  final String? banck = jsonConvert.convert<String>(json['banck']);
  if (banck != null) {
    paymentRequestEntity.banck = banck;
  }
  return paymentRequestEntity;
}

Map<String, dynamic> $PaymentRequestEntityToJson(PaymentRequestEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['idLottery'] = entity.idLottery?.toJson();
  data['idUser'] = entity.idUser?.toJson();
  data['name'] = entity.name;
  data['account'] = entity.account;
  data['banck'] = entity.banck;
  return data;
}

extension PaymentRequestEntityExtension on PaymentRequestEntity {
  PaymentRequestEntity copyWith({
    String? id,
    PaymentRequestIdLottery? idLottery,
    PaymentRequestIdUser? idUser,
    String? name,
    String? account,
    String? banck,
  }) {
    return PaymentRequestEntity()
      ..id = id ?? this.id
      ..idLottery = idLottery ?? this.idLottery
      ..idUser = idUser ?? this.idUser
      ..name = name ?? this.name
      ..account = account ?? this.account
      ..banck = banck ?? this.banck;
  }
}

PaymentRequestIdLottery $PaymentRequestIdLotteryFromJson(
    Map<String, dynamic> json) {
  final PaymentRequestIdLottery paymentRequestIdLottery = PaymentRequestIdLottery();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    paymentRequestIdLottery.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    paymentRequestIdLottery.name = name;
  }
  final String? startedDate = jsonConvert.convert<String>(json['startedDate']);
  if (startedDate != null) {
    paymentRequestIdLottery.startedDate = startedDate;
  }
  final String? endDate = jsonConvert.convert<String>(json['endDate']);
  if (endDate != null) {
    paymentRequestIdLottery.endDate = endDate;
  }
  final PaymentRequestIdLotteryAdmin? admin = jsonConvert.convert<
      PaymentRequestIdLotteryAdmin>(json['admin']);
  if (admin != null) {
    paymentRequestIdLottery.admin = admin;
  }
  final double? cashPrize = jsonConvert.convert<double>(json['cashPrize']);
  if (cashPrize != null) {
    paymentRequestIdLottery.cashPrize = cashPrize;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    paymentRequestIdLottery.status = status;
  }
  final String? hour = jsonConvert.convert<String>(json['hour']);
  if (hour != null) {
    paymentRequestIdLottery.hour = hour;
  }
  final List<
      PaymentRequestIdLotteryTickets>? tickets = (json['tickets'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<PaymentRequestIdLotteryTickets>(
          e) as PaymentRequestIdLotteryTickets).toList();
  if (tickets != null) {
    paymentRequestIdLottery.tickets = tickets;
  }
  return paymentRequestIdLottery;
}

Map<String, dynamic> $PaymentRequestIdLotteryToJson(
    PaymentRequestIdLottery entity) {
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

extension PaymentRequestIdLotteryExtension on PaymentRequestIdLottery {
  PaymentRequestIdLottery copyWith({
    String? id,
    String? name,
    String? startedDate,
    String? endDate,
    PaymentRequestIdLotteryAdmin? admin,
    double? cashPrize,
    String? status,
    String? hour,
    List<PaymentRequestIdLotteryTickets>? tickets,
  }) {
    return PaymentRequestIdLottery()
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

PaymentRequestIdLotteryAdmin $PaymentRequestIdLotteryAdminFromJson(
    Map<String, dynamic> json) {
  final PaymentRequestIdLotteryAdmin paymentRequestIdLotteryAdmin = PaymentRequestIdLotteryAdmin();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    paymentRequestIdLotteryAdmin.id = id;
  }
  final String? createdAt = jsonConvert.convert<String>(json['createdAt']);
  if (createdAt != null) {
    paymentRequestIdLotteryAdmin.createdAt = createdAt;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    paymentRequestIdLotteryAdmin.name = name;
  }
  final String? password = jsonConvert.convert<String>(json['password']);
  if (password != null) {
    paymentRequestIdLotteryAdmin.password = password;
  }
  final String? role = jsonConvert.convert<String>(json['role']);
  if (role != null) {
    paymentRequestIdLotteryAdmin.role = role;
  }
  final String? email = jsonConvert.convert<String>(json['email']);
  if (email != null) {
    paymentRequestIdLotteryAdmin.email = email;
  }
  return paymentRequestIdLotteryAdmin;
}

Map<String, dynamic> $PaymentRequestIdLotteryAdminToJson(
    PaymentRequestIdLotteryAdmin entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['createdAt'] = entity.createdAt;
  data['name'] = entity.name;
  data['password'] = entity.password;
  data['role'] = entity.role;
  data['email'] = entity.email;
  return data;
}

extension PaymentRequestIdLotteryAdminExtension on PaymentRequestIdLotteryAdmin {
  PaymentRequestIdLotteryAdmin copyWith({
    String? id,
    String? createdAt,
    String? name,
    String? password,
    String? role,
    String? email,
  }) {
    return PaymentRequestIdLotteryAdmin()
      ..id = id ?? this.id
      ..createdAt = createdAt ?? this.createdAt
      ..name = name ?? this.name
      ..password = password ?? this.password
      ..role = role ?? this.role
      ..email = email ?? this.email;
  }
}

PaymentRequestIdLotteryTickets $PaymentRequestIdLotteryTicketsFromJson(
    Map<String, dynamic> json) {
  final PaymentRequestIdLotteryTickets paymentRequestIdLotteryTickets = PaymentRequestIdLotteryTickets();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    paymentRequestIdLotteryTickets.id = id;
  }
  final int? number = jsonConvert.convert<int>(json['number']);
  if (number != null) {
    paymentRequestIdLotteryTickets.number = number;
  }
  final double? price = jsonConvert.convert<double>(json['price']);
  if (price != null) {
    paymentRequestIdLotteryTickets.price = price;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    paymentRequestIdLotteryTickets.status = status;
  }
  final bool? winner = jsonConvert.convert<bool>(json['winner']);
  if (winner != null) {
    paymentRequestIdLotteryTickets.winner = winner;
  }
  return paymentRequestIdLotteryTickets;
}

Map<String, dynamic> $PaymentRequestIdLotteryTicketsToJson(
    PaymentRequestIdLotteryTickets entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['number'] = entity.number;
  data['price'] = entity.price;
  data['status'] = entity.status;
  data['winner'] = entity.winner;
  return data;
}

extension PaymentRequestIdLotteryTicketsExtension on PaymentRequestIdLotteryTickets {
  PaymentRequestIdLotteryTickets copyWith({
    String? id,
    int? number,
    double? price,
    String? status,
    bool? winner,
  }) {
    return PaymentRequestIdLotteryTickets()
      ..id = id ?? this.id
      ..number = number ?? this.number
      ..price = price ?? this.price
      ..status = status ?? this.status
      ..winner = winner ?? this.winner;
  }
}

PaymentRequestIdUser $PaymentRequestIdUserFromJson(Map<String, dynamic> json) {
  final PaymentRequestIdUser paymentRequestIdUser = PaymentRequestIdUser();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    paymentRequestIdUser.id = id;
  }
  final String? createdAt = jsonConvert.convert<String>(json['createdAt']);
  if (createdAt != null) {
    paymentRequestIdUser.createdAt = createdAt;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    paymentRequestIdUser.name = name;
  }
  final String? password = jsonConvert.convert<String>(json['password']);
  if (password != null) {
    paymentRequestIdUser.password = password;
  }
  final String? role = jsonConvert.convert<String>(json['role']);
  if (role != null) {
    paymentRequestIdUser.role = role;
  }
  final String? email = jsonConvert.convert<String>(json['email']);
  if (email != null) {
    paymentRequestIdUser.email = email;
  }
  return paymentRequestIdUser;
}

Map<String, dynamic> $PaymentRequestIdUserToJson(PaymentRequestIdUser entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['createdAt'] = entity.createdAt;
  data['name'] = entity.name;
  data['password'] = entity.password;
  data['role'] = entity.role;
  data['email'] = entity.email;
  return data;
}

extension PaymentRequestIdUserExtension on PaymentRequestIdUser {
  PaymentRequestIdUser copyWith({
    String? id,
    String? createdAt,
    String? name,
    String? password,
    String? role,
    String? email,
  }) {
    return PaymentRequestIdUser()
      ..id = id ?? this.id
      ..createdAt = createdAt ?? this.createdAt
      ..name = name ?? this.name
      ..password = password ?? this.password
      ..role = role ?? this.role
      ..email = email ?? this.email;
  }
}