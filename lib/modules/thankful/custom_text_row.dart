
import 'package:flutter/material.dart';
import 'package:payment/shared/themes/style.dart';

class CustomTextRow extends StatelessWidget {
  const CustomTextRow({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.style18,
        ),
        Text(
          subTitle,
          style: Styles.styleBlod18,
        ),
      ],
    );
  }
}


