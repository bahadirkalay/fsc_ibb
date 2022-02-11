import 'package:flutter/material.dart';

class HomeTitleWidget extends StatelessWidget {
  HomeTitleWidget({Key key, String title, Function onPressed})
      : title = title,
        onPressed = onPressed,
        super(key: key);
  String title;
  Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17)),
        TextButton(
            onPressed: onPressed,
            child: Text(
              'View All',
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ))
      ],
    );
  }
}
