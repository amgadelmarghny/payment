import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:payment/modules/payment_details/custom_credit_card.dart';
import 'package:payment/shared/components/payment_method/payment_method_list_view.dart';
import 'package:payment/modules/thankful/thankfull_view.dart';
import 'package:payment/shared/components/custom_button.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: PaymentMethodItemListView(),
        ),
        SliverToBoxAdapter(
          child: MyCreditCart(
            formKey: formKey,
            autoValidateMode: autovalidateMode,
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 12,
              ),
              child: CustomButton(
                text: 'Payment',
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const ThankfulView();
                    }));
                    log('payment');
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
