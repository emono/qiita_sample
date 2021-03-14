import 'package:qiita_sample/screens/article/room_repository.dart';
import 'package:state_notifier/state_notifier.dart';

import 'room_state.dart';

class RoomStateNotifier extends StateNotifier<RoomState> {
  RoomStateNotifier(this.repository) : super(RoomState()) {
    _getFlutterArticles();
  }

  final RoomRepository repository;

  Future<void> _getFlutterArticles() async {
    var rooms = await repository.listRooms();
    state = state.copyWith(
      rooms: rooms,
    );
  }
}
