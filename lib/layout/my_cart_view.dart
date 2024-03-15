import 'package:flutter/material.dart';
import 'package:payment/layout/my_cart_view_body.dart';
import 'package:payment/shared/components/custom_app_bar.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'My Cart'),
      body: const MyCartViewBody(),
    );
  }
}
