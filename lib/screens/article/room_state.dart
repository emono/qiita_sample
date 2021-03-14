import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qiita_sample/data/entities/room_entity.dart';

part 'room_state.freezed.dart';

part 'room_state.g.dart';

@freezed
abstract class RoomState with _$RoomState {
  const factory RoomState({@Default([]) List<RoomEntity> rooms}) = _RoomState;

  factory RoomState.fromJson(Map<String, dynamic> json) =>
      _$RoomStateFromJson(json);
}
