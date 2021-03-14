import 'package:qiita_sample/data/api/qiita_api_client.dart';
import 'package:qiita_sample/data/entities/qiita_info.dart';
import 'package:qiita_sample/data/api/room_client.dart';
import 'package:qiita_sample/data/entities/room_entity.dart';
class ArticleRepository {
  final _api = QiitaApiClient.create();
  final _roomApi = RoomClient.create();

  Future<RoomEntity> getRoom() async {
    return await _roomApi.getRoom();
  }

  Future<List<QiitaInfo>> getFlutterArticles() async {
    return await _api.getFlutterArticles();
  }
}