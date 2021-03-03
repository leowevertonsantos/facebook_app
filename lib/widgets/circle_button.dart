import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;
  final double iconSize;

  const CircleButton({
    Key key,
    @required this.icon,
    @required this.onPress,
    @required this.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(this.icon),
        iconSize: this.iconSize,
        color: Colors.black,
        onPressed: this.onPress,
      ),
    );
  }
}
