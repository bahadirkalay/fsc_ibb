import 'package:flutter/material.dart';

AppBar CustomAppBar(double _height, BuildContext context) {
  return AppBar(
    actions: [
      Container(
        margin: EdgeInsets.all(_height * 0.01),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 9.0,
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(_height * 0.50),
                bottomRight: Radius.circular(_height * 0.50),
                topLeft: Radius.circular(_height * 0.50),
                topRight: Radius.circular(_height * 0.50))),
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none,
              size: 20,
              color: Colors.black,
            )),
      ),
    ],
    title: Stack(
      children: [
        Container(
          margin: EdgeInsets.only(
            left: _height * 0.13,
          ),
          height: _height * 0.02,
          width: _height * 0.02,
          decoration: BoxDecoration(
              color: Color.fromRGBO(85, 143, 96, 1),
              borderRadius: BorderRadius.all(Radius.circular(_height * 0.02))),
          child: Padding(
            padding: EdgeInsets.only(top: _height * 0.003),
            child: Text(
              '3',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Text(
          'Best Offers',
          style: TextStyle(
              fontWeight: FontWeight.w600, color: Colors.black, fontSize: 19),
        )
      ],
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: Container(
      margin: EdgeInsets.all(_height * 0.01),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 9.0,
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(_height * 0.50)),
      child: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.west,
            size: 20,
            color: Colors.black,
          )),
    ),
  );
}
