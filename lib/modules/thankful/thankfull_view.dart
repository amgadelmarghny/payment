import 'package:flutter/material.dart';
import 'package:payment/modules/thankful/thankful_view_body.dart';
import 'package:payment/shared/components/custom_app_bar.dart';

class ThankfulView extends StatelessWidget {
  const ThankfulView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const ThankfullViewBody(),
    );
  }
}
