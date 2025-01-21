import 'package:guolo_app/models/ticket_entity.dart';
import 'package:guolo_app/models/user.dart';

class BuyTicket {
  final User user;
  final List<TicketEntity> ticketEntitys;

  BuyTicket({required this.user, required this.ticketEntitys});

  static fromJson(Map<dynamic, dynamic> json) {
    return BuyTicket(
        user: json['userDto'],
        ticketEntitys: (json['ticketDtos'] as List)
            .map((e) => TicketEntity.fromJson(e))
            .toList());
  }

  static toJson(BuyTicket buyTicket) {
    return {'userDto': buyTicket.user, 'ticketDtos': buyTicket.ticketEntitys};
  }
}
