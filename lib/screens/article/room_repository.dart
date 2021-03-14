import 'package:qiita_sample/data/api/room_client.dart';
import 'package:qiita_sample/data/entities/room_entity.dart';
class RoomRepository {
  final _roomApi = RoomClient.create();

  Future<RoomEntity> getRoom() async {
    return await _roomApi.getRoom();
  }

  Future<List<RoomEntity>> listRooms() async {
    return await _roomApi.listRooms();
  }
}