import 'package:flutter/material.dart';
import 'package:meteor/atomic_widgets/custom_card.dart';
import 'package:meteor/models/video.dart';
import 'package:meteor/utils.dart';

class MeteorVideoListItem extends StatelessWidget {
  final Video video;

  MeteorVideoListItem(this.video);
  
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.black,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10.0,
                  offset: Offset(10.0, 0.0),
                )
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.network(
                'https://image.mux.com/${video.muxData.playbackID}/thumbnail.png',
                width: 128,
                height: 72,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(video.title),
              Text(formatTimestamp(video.uploadDate), 
                style: TextStyle(
                  color: Colors.black38,
                )
              ),
            ],
          )
        ],
      ),
    );
  }
}