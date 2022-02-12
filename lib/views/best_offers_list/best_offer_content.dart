part of best_offer_list_view;

class BestOfferContent extends StatefulWidget {
  const BestOfferContent({Key key}) : super(key: key);

  @override
  _BestOfferContentState createState() => _BestOfferContentState();
}

class _BestOfferContentState extends State<BestOfferContent> {
  String dropdownValue = 'Bali';
  final String _img =
      'https://images.unsplash.com/photo-1583847268964-b28dc8f51f92?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80';

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: _height * 0.02),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(left: _height * 0.004),
                child: DropdownButton<String>(
                  style: TextStyle(fontSize: 11, color: Colors.grey.shade600),
                  value: dropdownValue,
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue = newValue;
                    });
                  },
                  underline: SizedBox(
                    height: 0,
                  ),
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Color.fromRGBO(85, 143, 96, 1),
                    size: 20,
                  ),
                  items: <String>['Bali', 'Two', 'Free', 'Four']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: _height * 0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 14,
                      color: Color.fromRGBO(85, 143, 96, 1),
                    ),
                    Text(
                      dropdownValue + ',',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
                    ),
                    Text(
                      'Indonesia',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                          color: Colors.grey.shade500),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: _height * 0.03,
        ),
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(_height * 0.02)),
          child: Image.network(_img, height: _height * 0.50),
        ),
        SizedBox(
          height: _height * 0.02,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Belina Home Stay',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Bali,'),
                Text(
                  'Indenosia',
                  style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 11,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('\$930',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.w700)),
                Text('/month',
                    style: TextStyle(color: Colors.grey.shade500, fontSize: 10))
              ],
            )
          ],
        ),
        Padding(
            padding: EdgeInsets.only(
                bottom: _height * 0.02,
                right: _height * 0.02,
                left: _height * 0.02),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Next',
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
            ))
      ],
    );
  }
}