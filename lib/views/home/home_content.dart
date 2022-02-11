part of home_view;

class HomeContent extends StatelessWidget {
  const HomeContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.height;
    final String _img =
        'https://images.unsplash.com/photo-1583847268964-b28dc8f51f92?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80';
    return Padding(
      padding: EdgeInsets.only(right: _height * 0.02, left: _height * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Best Offers',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17)),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'View All',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ))
            ],
          ),
          SizedBox(
            height: _height * 0.02,
          ),
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
