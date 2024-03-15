import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment/shared/themes/style.dart';

class CardInfoContainer extends StatelessWidget {
  const CardInfoContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/image/credit logo.svg'),
          const SizedBox(
            width: 23,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Credit Card',
                style: Styles.style18,
              ),
              Text(
                'Mastercard **78 ',
                style: Styles.style18withOpacity,
              )
            ],
          )
        ],
      ),
    );
  }
}
