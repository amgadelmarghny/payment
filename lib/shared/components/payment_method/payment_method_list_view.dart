import 'package:flutter/material.dart';

import 'payment_method_item.dart';

class PaymentMethodItemListView extends StatefulWidget {
  const PaymentMethodItemListView({super.key});

  @override
  State<PaymentMethodItemListView> createState() =>
      _PaymentMethodItemListViewState();
}

class _PaymentMethodItemListViewState extends State<PaymentMethodItemListView> {
  final List<String> paymentMethodImageList = const [
    'assets/image/visa_credit.svg',
    'assets/image/paypal.svg',
  ];

  int isChoose = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
          itemCount: paymentMethodImageList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GestureDetector(
                  onTap: () {
                    isChoose = index;
                    setState(() {});
                  },
                  child: PaymentMethodItem(
                    isActive: isChoose == index,
                    image: paymentMethodImageList[index],
                  )),
            );
          }),
    );
  }
}
