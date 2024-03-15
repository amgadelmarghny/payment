import 'package:flutter/material.dart';
import 'package:payment/shared/themes/style.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({
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
          style: Styles.style18,
        ),
        Text(
          '\$''$price',
          style: Styles.style18,
        )
      ],
    );
  }
}
