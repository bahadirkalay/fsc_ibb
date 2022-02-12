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
            onPressed: () {
              Navigator.of(context).pushNamed('bestOfferListRoute');
            },
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

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                RecommendedWidget(height: _height, width: _width, img: _img),
                RecommendedWidget(height: _height, width: _width, img: _img),
              ],
            ),
          )
        ],
      ),
    );
  }
}
