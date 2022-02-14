// [ This is an auto generated file ]

import 'package:flutter/material.dart';
import 'package:fsc_ibb/core/router_constants.dart';

import 'package:fsc_ibb/views/splash/splash_view.dart' as view0;
import 'package:fsc_ibb/views/on_board/on_board_view.dart' as view1;
import 'package:fsc_ibb/views/home/home_view.dart' as view2;
import 'package:fsc_ibb/views/help/help_view.dart' as view3;
import 'package:fsc_ibb/views/best_offers_list/best_offer_list_view.dart'
    as view4;
import 'package:fsc_ibb/views/best_offers_detail/best_offer_detail.dart'
    as view5;

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashViewRoute:
        return MaterialPageRoute(builder: (_) => view0.SplashView());
      case onBoardViewRoute:
        return MaterialPageRoute(builder: (_) => view1.OnBoardView());
      case homeViewRoute:
        return MaterialPageRoute(builder: (_) => view2.HomeView());
      case helpViewRoute:
        return MaterialPageRoute(builder: (_) => view3.HelpView());
      case bestOfferListRoute:
        return MaterialPageRoute(builder: (_) => view4.BestOfferList());
      case bestOfferDetailRoute:
        return MaterialPageRoute(builder: (_) => view5.BestOfferDetail());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
