import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:qiita_sample/data/entities/qiita_info.dart';
import 'package:qiita_sample/data/entities/room_entity.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'room_client.g.dart';

@RestApi(baseUrl: "http://localhost:3000/api/v1/")
abstract class RoomClient {
  factory RoomClient(Dio dio, {String baseUrl}) = _RoomClient;

  static RoomClient create() {
    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    return RoomClient(dio);
  }

  @GET("rooms/1")
  Future<RoomEntity> getRoom();

  @GET("rooms")
  Future<List<RoomEntity>> listRooms();
}