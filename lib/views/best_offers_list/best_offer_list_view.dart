library best_offer_list_view;

import 'package:flutter/material.dart';
import 'package:fsc_ibb/views/best_offers_list/widgets/custom_appbar.dart';

part 'best_offer_top.dart';
part 'best_offer_content.dart';

class BestOfferList extends StatefulWidget {
  const BestOfferList({Key key}) : super(key: key);

  @override
  _BestOfferListState createState() => _BestOfferListState();
}

class _BestOfferListState extends State<BestOfferList> {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: CustomAppBar(_height, context),
      body: Stack(
        children: [BestOfferContent()],
      ),
    );
  }
}
