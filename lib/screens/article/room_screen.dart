import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:qiita_sample/data/entities/room_entity.dart';
import 'package:qiita_sample/screens/article/room_item.dart';
import 'package:qiita_sample/screens/article/room_repository.dart';
import 'package:qiita_sample/screens/article/room_state_notifier.dart';
// import 'package:qiita_sample/screens/article_detail/article_detail_screen.dart';

class RoomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'cast',
        ),
        centerTitle: true,
      ),
      body: _List(),
    );
  }
}

class _List extends StatelessWidget {
  final articleStateNotifier = StateNotifierProvider(
    (_) => RoomStateNotifier(
      RoomRepository(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) {
        final state = watch(articleStateNotifier.state);
        return ListView.builder(
          itemCount: state.rooms.length,
          itemBuilder: (context, int position) => RoomItem(
            room: state.rooms[position],
            // onArticleClicked: (qiitaInfo) => _openArticleWebPage(
            //   context,
            //   qiitaInfo,
            // ),
          ),
        );
      },
    );
  }

  // void _openArticleWebPage(
  //   BuildContext context,
  //   QiitaInfo qiitaInfo,
  // ) {
  //   Navigator.of(context).push(
  //     MaterialPageRoute(
  //       builder: (context) => ArticleDetailScreen(
  //         qiitaInfo: qiitaInfo,
  //       ),
  //     ),
  //   );
  // }
}
