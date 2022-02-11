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
        children: [
          ///Best Offers başlık alanaıdır. [ HomeTitleWidget ] kullanılmıştır.
          HomeTitleWidget(
            title: 'Best Offers',
            onPressed: () {},
          ),

          SizedBox(
            height: _height * 0.02,
          ),

          ///Best of Widget üst alan listelenen ürnnler [Best Of Widget]
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                BestOfWidget(height: _height, width: _width, img: _img),
                BestOfWidget(height: _height, width: _width, img: _img),
                BestOfWidget(height: _height, width: _width, img: _img),
              ],
            ),
          ),

          HomeTitleWidget(
            title: "Recommended",
            onPressed: () {},
          ),
          SizedBox(
            height: _height * 0.02,
          ),

          Container(
            padding: EdgeInsets.only(
                left: _height * 0.01,
                right: _height * 0.01,
                top: _height * 0.01,
                bottom: _height * 0.01),
            height: _height * 0.16,
            width: _width * 0.30,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.all(Radius.circular(_height * 0.02))),
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
                                  '600',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 11),
                                ),
                                Text(
                                  '/month',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 9),
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
                      fixedSize: MaterialStateProperty.all(
                          Size(_width, _height * 0.05)),
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor: MaterialStateProperty.all(
                          Colors.green.withOpacity(0.1))),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
