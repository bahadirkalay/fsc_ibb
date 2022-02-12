import 'package:flutter/material.dart';

class RecommendedWidget extends StatelessWidget {
  const RecommendedWidget({
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
    return Container(
      margin: EdgeInsets.only(right: _height * 0.01),
      padding: EdgeInsets.only(
          left: _height * 0.01,
          right: _height * 0.01,
          top: _height * 0.01,
          bottom: _height * 0.01),
      height: _height * 0.16,
      width: _width * 0.30,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(_height * 0.02))),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(_height * 0.01),
                child: Image.network(
                  _img,
                  height: _height * 0.07,
                  width: _height * 0.07,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                  padding: EdgeInsets.only(
                      left: _height * 0.01, top: _height * 0.01),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Azura Home Stay',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      Text(
                        'Indonesia',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 11,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: _height * 0.01,
                      ),
                      Row(
                        children: [
                          Text(
                            '\$600',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 11),
                          ),
                          Text(
                            '/month',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 9),
                          ),
                        ],
                      ),
                    ],
                  ))
            ],
          ),
          SizedBox(
            height: _height * 0.01,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'View Detail',
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
            style: ButtonStyle(
                fixedSize:
                    MaterialStateProperty.all(Size(_width, _height * 0.05)),
                elevation: MaterialStateProperty.all(0),
                backgroundColor:
                    MaterialStateProperty.all(Colors.green.withOpacity(0.1))),
          )
        ],
      ),
    );
  }
}
