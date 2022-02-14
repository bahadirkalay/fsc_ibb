library best_offer_detail;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fsc_ibb/widgets/custom_appbar.dart';

part 'best_offer_content.dart';
part 'best_offer_slider.dart';

class BestOfferDetail extends StatefulWidget {
  const BestOfferDetail({Key key}) : super(key: key);

  @override
  _BestOfferDetailState createState() => _BestOfferDetailState();
}

class _BestOfferDetailState extends State<BestOfferDetail> {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: CustomAppBar(_height, context),
      body: Stack(
        children: [
          BestOfferSlider(),
          Padding(
            padding: EdgeInsets.only(
                right: _height * 0.02,
                left: _height * 0.02,
                top: _height * 0.32),
            child: BestOfferDetailContent(),
          )
        ],
      ),
    );
  }
}
