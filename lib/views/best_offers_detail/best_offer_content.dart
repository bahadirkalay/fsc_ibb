part of best_offer_detail;

class BestOfferDetailContent extends StatelessWidget {
  const BestOfferDetailContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: _height * 0.10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Belina Home Stay',
                style: TextStyle(
                    fontSize: _height * 0.02, fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: _height * 0.008,
              ),
              Row(
                children: [
                  Text(
                    'Bali, ',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: _height * 0.006,
                  ),
                  Text(
                    'Indonesia',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                    height: _height * 0.05,
                    width: _height * 0.05,
                    decoration: BoxDecoration(
                        color: Colors.green.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(_height * 0.50)),
                    child: Icon(
                      Icons.bed,
                      color: Colors.green,
                      size: _height * 0.03,
                    )),
                SizedBox(
                  height: _height * 0.01,
                ),
                Text(
                  '2 Bedroom',
                  style: TextStyle(fontSize: 11, color: Colors.grey),
                )
              ],
            ),
            Column(
              children: [
                Container(
                    height: _height * 0.05,
                    width: _height * 0.05,
                    decoration: BoxDecoration(
                        color: Colors.green.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(_height * 0.50)),
                    child: Icon(
                      Icons.shower,
                      size: _height * 0.03,
                      color: Colors.green,
                    )),
                SizedBox(
                  height: _height * 0.01,
                ),
                Text(
                  '2 Bathroom',
                  style: TextStyle(fontSize: 11, color: Colors.grey),
                )
              ],
            ),
            Column(
              children: [
                Container(
                    height: _height * 0.05,
                    width: _height * 0.05,
                    decoration: BoxDecoration(
                        color: Colors.green.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(_height * 0.50)),
                    child: Icon(
                      Icons.rss_feed,
                      color: Colors.green,
                      size: _height * 0.03,
                    )),
                SizedBox(
                  height: _height * 0.01,
                ),
                Text(
                  'Free Wifi',
                  style: TextStyle(fontSize: 11, color: Colors.grey),
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: _height * 0.03,
        ),
        Text(
          'Description',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
        ),
        SizedBox(
          height: _height * 0.02,
        ),
        Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been',
            style: TextStyle(color: Colors.grey, fontSize: 12, height: 1.5)),
        TextButton(
            onPressed: () {},
            child: Text('See more',
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 11))),
        SizedBox(height: _height * 0.11),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(
                child: Row(
                  children: [
                    Text(
                      '\$900',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w800,
                          fontSize: 15),
                    ),
                    Text(
                      '/month',
                      style: TextStyle(color: Colors.grey, fontSize: 9),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('bestOfferDetailRoute');
                },
                child: Text(
                  'Book Now',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
                style: ButtonStyle(
                    fixedSize:
                        MaterialStateProperty.all(Size(_width, _height * 0.06)),
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromRGBO(85, 143, 96, 1))),
              ),
            )
          ],
        )
      ],
    );
  }
}
