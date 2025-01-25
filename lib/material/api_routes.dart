import 'package:guolo_app/models/buy_ticket.dart';

class ApiRoute {
  static CurrentRoute currentRoute = CurrentRoute.login;
  static String getApiRoute(String route) {
    return "http://192.168.112.164:8080/$route";
  }

  static String login() {
    currentRoute = CurrentRoute.login;
    return ApiRoute.getApiRoute("api/auth/login/user");
  }

  static String update() {
    currentRoute = CurrentRoute.update;
    return ApiRoute.getApiRoute("api/auth/update");
  }

  static String signup() {
    currentRoute = CurrentRoute.signup;
    return ApiRoute.getApiRoute("api/auth/signup");
  }

  static String fetchAllLotteries() {
    currentRoute = CurrentRoute.fetchAllLotteries;
    return ApiRoute.getApiRoute("api/user/lottery");
  }

  static String fetchAllTickets(int id) {
    currentRoute = CurrentRoute.fetchAllTickets;
    return ApiRoute.getApiRoute("api/ticket");
  }

  static String getATicket(String id,int number) {
    currentRoute = CurrentRoute.getATicket;
    return ApiRoute.getApiRoute("api/user/ticket/$id/$number");

  }
  static String buyTicket() {
    currentRoute = CurrentRoute.buyTicket;
    return ApiRoute.getApiRoute("api/user/ticket/buy");
  }

  static String stroy(String id) {
    currentRoute = CurrentRoute.story;
    return ApiRoute.getApiRoute("api/user/ticket/running/$id");

  }
  static String fetchTicketsByLottery(int id) {
    currentRoute = CurrentRoute.fetchTicketsByLottery;
    return ApiRoute.getApiRoute("api/ticket/lottery/$id");
  }

  static String verified() {
    currentRoute = CurrentRoute.verified;
    return ApiRoute.getApiRoute("api/auth/confirm");
  }

  static String sendOtp() {
    currentRoute = CurrentRoute.sendOtp;
    return ApiRoute.getApiRoute("api/auth/send-otp");
  }
}

enum CurrentRoute {
  login,
  signup,
  fetchAllLotteries,
  fetchAllTickets,
  fetchTicketsByLottery,
  verified,
  sendOtp,
  getATicket, buyTicket, story, update
}
