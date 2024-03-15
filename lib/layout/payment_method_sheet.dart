
import 'package:flutter/material.dart';
import 'package:payment/shared/components/custom_button.dart';
import 'package:payment/shared/components/payment_method/payment_method_list_view.dart';

class PaymentMethodButtomSheet extends StatelessWidget {
  const PaymentMethodButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 16,
          ),
          PaymentMethodItemListView(),
          SizedBox(
            height: 20,
          ),
          CustomButton(text: 'Continue'),
        ],
      ),
    );
  }
}