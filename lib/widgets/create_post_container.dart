import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_app/models/user_model.dart';
import 'package:facebook_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({
    Key key,
    @required this.currentUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              ProfileAvatar(imageURL: currentUser.imageUrl),
              const SizedBox(width: 8.0),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'No que você está pensando ?',
                  ),
                ),
              ),
            ],
          ),
          Divider(
            height: 10.0,
            thickness: 0.5,
          ),
          Container(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton.icon(
                  icon: const Icon(
                    Icons.videocam,
                    color: Colors.red,
                  ),
                  label: Text('Ao vivo'),
                  onPressed: () => print('Ao vivo'),
                ),
                VerticalDivider(width: 8),
                FlatButton.icon(
                  icon: const Icon(
                    Icons.photo_library,
                    color: Colors.green,
                  ),
                  label: Text('Foto'),
                  onPressed: () => print('Foto'),
                ),
                VerticalDivider(width: 8),
                FlatButton.icon(
                  icon: const Icon(
                    Icons.location_on,
                    color: Colors.red,
                  ),
                  label: Text('Check-in'),
                  onPressed: () => print('Check-in'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
