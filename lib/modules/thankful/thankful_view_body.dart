import 'package:flutter/material.dart';
import 'package:payment/modules/thankful/custom_check_icon.dart';
import 'package:payment/modules/thankful/custom_dashed_line.dart';
import 'package:payment/modules/thankful/thankfull_card_widget.dart';

class ThankfullViewBody extends StatelessWidget {
  const ThankfullViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const ThankfullCard(),
          const Positioned(
            top: -50,
            right: 0,
            left: 0,
            child: CustomCheckIcon(),
          ),
          Positioned(
            left: -20,
            bottom: MediaQuery.sizeOf(context).height * .2,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            right: -20,
            bottom: MediaQuery.sizeOf(context).height * .2,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            left: 20 + 8,
            right: 20 + 8,
            bottom: MediaQuery.sizeOf(context).height * .2 + 20,
            child: const CustomDashedLine(),
          )
        ],
      ),
    );
  }
}
