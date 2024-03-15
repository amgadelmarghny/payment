import 'package:flutter/material.dart';
import 'package:payment/shared/themes/style.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({
    super.key,
    required this.title,
    required this.price,
  });

  final String title;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.style24,
        ),
        Text(
          '\$' '$price',
          style: Styles.style24,
        )
      ],
    );
  }
}
