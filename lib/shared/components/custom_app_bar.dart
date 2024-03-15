import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment/shared/themes/style.dart';

AppBar buildAppBar({ final String? title,  Function? onTap}) {
  return AppBar(
    leading: Center(
      child: GestureDetector(
        onTap: (){},
        child: SvgPicture.asset(
          'assets/image/arrow.svg',
        ),
      ),
    ),
    centerTitle: true,
    elevation: 0,
    backgroundColor: Colors.transparent,
    title: Text(
      title??'',
      textAlign: TextAlign.center,
      style: Styles.style25,
    ),
  );
}
