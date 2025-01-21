import 'package:dio/dio.dart';
import 'package:guolo_app/material/api_routes.dart';
import 'package:guolo_app/models/lottery_entity.dart';
import 'package:guolo_app/repositorys/base_repostory.dart';

class LotterieRepository extends BaseRepository {
  LotterieRepository({required super.dio});

  Future<List<LotteryEntity>> getLotteries() async {
    Response response = await dio.get(ApiRoute.fetchAllLotteries());
    return (response.data as List)
        .map((e) => LotteryEntity.fromJson(e))
        .toList();
  }
}
