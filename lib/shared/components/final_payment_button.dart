import 'package:flutter/material.dart';
import 'package:payment/shared/themes/style.dart';

class FinalPaymentButton extends StatelessWidget {
  const FinalPaymentButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 113,
        height: 58,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 1.50,
              color: Color(0xFF34A853),
            ),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Center(
          child: Text(
            'PAID',
            style: Styles.style24.copyWith(
              color: const Color(0xFF34A853),
            ),
          ),
        ),
      ),
    );
  }
}
