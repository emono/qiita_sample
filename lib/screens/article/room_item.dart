import 'package:flutter/material.dart';
import 'package:qiita_sample/data/entities/room_entity.dart';

class RoomItem extends StatelessWidget {
  RoomItem({
    this.room,
    // this.onArticleClicked,
  });

  final RoomEntity room;
  // final ValueChanged onArticleClicked;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: InkWell(
        // onTap: () => onArticleClicked(
        //   qiitaInfo,
        // ),
        child: SizedBox(
          height: 75,
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  // child: Image.network(
                  //   qiitaInfo.qiitaUser.profileImageUrl,
                  // ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Text(
                  room.name,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
