import 'package:flutter/material.dart';
import 'package:payment/modules/payment_details/payment_details_view_body.dart';
import 'package:payment/shared/components/custom_app_bar.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Payment Details'),
      body: const PaymentDetailsViewBody(),
    );
  }
}
