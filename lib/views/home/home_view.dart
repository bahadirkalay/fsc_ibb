library home_view;

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fsc_ibb/views/home/widgets/best_of_widgets.dart';
import 'package:fsc_ibb/views/home/widgets/home_title_widget.dart';
import 'package:stacked/stacked.dart';
import 'home_view_model.dart';

part 'home_top.dart';
part 'home_content.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (BuildContext context, HomeViewModel viewModel, Widget _) {
        return Scaffold(
            backgroundColor: Colors.grey.shade200,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [HomeTop(), HomeContent()],
            ));
      },
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
