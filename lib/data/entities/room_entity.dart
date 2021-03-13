import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:qiita_sample/data/entities/qiita_user.dart';

part 'room_entity.freezed.dart';
part 'room_entity.g.dart';

@freezed
abstract class RoomEntity with _$RoomEntity {
  factory RoomEntity({
    int id,
    int owner_id,
    String name,
    String owner_name,
    String created_at,
    String updated_at,
  }) = _RoomEntity;

  factory RoomEntity.fromJson(Map<String, dynamic> json) =>
      _$RoomEntityFromJson(json);
}
