import 'package:flutter/material.dart';

class BestOfWidget extends StatelessWidget {
  const BestOfWidget({
    Key key,
    @required double height,
    @required double width,
    @required String img,
  })  : _height = height,
        _width = width,
        _img = img,
        super(key: key);

  final double _height;
  final double _width;
  final String _img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
              height: _height * 0.25,
              width: _width * 0.20,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(_height * 0.02),
                child: Image.network(
                  _img,
                  fit: BoxFit.cover,
                ),
              )),
          SizedBox(
            height: _height * 0.01,
          ),
          Text(
            'Belina Home Stay',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Text(
                'Bali',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
              ),
              SizedBox(
                width: _height * 0.005,
              ),
              Text(
                'Indonesia',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 11,
                    color: Colors.grey.shade500),
              ),
            ],
          ),
          SizedBox(
            height: _height * 0.005,
          ),
          Row(
            children: [
              Text(
                '900',
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
              ),
              Text(
                '/month',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 11),
              ),
            ],
          )
        ],
      ),
    );
  }
}
