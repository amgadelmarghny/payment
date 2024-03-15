import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment/modules/thankful/card_info_item.dart';
import 'package:payment/modules/thankful/custom_text_row.dart';
import 'package:payment/modules/thankful/total_price_widget.dart';
import 'package:payment/shared/components/final_payment_button.dart';
import 'package:payment/shared/themes/style.dart';


class ThankfullCard extends StatelessWidget {
  const ThankfullCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: const Color(0xFFEDEDED),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          children: [
            const SizedBox(
              height: 66,
            ),
            const Text(
              'Thank you!',
              style: Styles.style25,
            ),
            Text(
              'Your transaction was successful',
              style: Styles.style20,
            ),
            const SizedBox(
              height: 42,
            ),
            const CustomTextRow(title: 'Date', subTitle: '1/24/2023'),
            const SizedBox(
              height: 20,
            ),
            const CustomTextRow(title: 'Time', subTitle: '10:15'),
            const SizedBox(
              height: 20,
            ),
            const CustomTextRow(title: 'To', subTitle: 'Nour'),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              height: 1,
              thickness: 3,
              color: Color(0xFFC7C7C7),
            ),
            const SizedBox(
              height: 24,
            ),
            const TotalPrice(title: 'Total', price: '50.97'),
            const SizedBox(
              height: 30,
            ),
            const CardInfoContainer(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/image/QR code.svg'),
                const FinalPaymentButton(),
              ],
            ),
            SizedBox(
              height: ((MediaQuery.sizeOf(context).height * .2 + 20) / 2) - 29,
            )
          ],
        ),
      ),
    );
  }
}
