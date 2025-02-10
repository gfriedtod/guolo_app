import 'package:dio/dio.dart';

import '../material/api_routes.dart';
import '../models/payment_proof_entity.dart';

class PaymentProofRepository {
  final Dio dio;

  PaymentProofRepository({required this.dio});

  Future<List<PaymentProofEntity>> fetchByLotteryId(String id) async {
    Response response = await dio.get(ApiRoute.fetchProofByLotteryId(id));
    return (response.data as List).map((e) => PaymentProofEntity.fromJson(e)).toList();
  }
}
