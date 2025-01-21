import 'package:dio/dio.dart';
import 'package:guolo_app/models/buy_ticket.dart';
import 'package:guolo_app/models/lottery_entity.dart';

import '../material/api_routes.dart';
import '../models/lottery_ticket_entity.dart';
import '../models/ticket_entity.dart';

class TicketRepository {
  final Dio dio;

  TicketRepository({required this.dio});

  getATicket(String id, int number) async {
    Response response = await dio.get(ApiRoute.getATicket(id, number));
    return (response.data as List)
        .map((e) => TicketEntity.fromJson(e))
        .toList();
  }

  buyTicket(BuyTicket buyTicket) async {
    Response response =
        await dio.post(ApiRoute.buyTicket(), data: BuyTicket.toJson(buyTicket));
    return (response.data as List)
        .map((e) => TicketEntity.fromJson(e))
        .toList();
  }

  fetchStory(String id) async {
    Response response = await dio.get(ApiRoute.stroy(id));
    return (response.data as List)
        .map((e) => LotteryTicketEntity.fromJson(e))
        .toList();
  }
}
