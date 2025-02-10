import 'package:dio/dio.dart';

import '../material/api_routes.dart';
import '../models/payment_request_entity.dart';

class PaymentRequestRepository {

  final Dio dio;

  PaymentRequestRepository({required this.dio});

  sendRequest(PaymentRequestEntity request) async {
    Response response = await dio.post(
      ApiRoute.sendPaymentRequest(),
      data: request.toJson(),
    );
  }
}