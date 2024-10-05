import 'package:flutter/material.dart';
import 'package:love_ally/utils/constants/mediaquery.dart';
import 'package:love_ally/utils/constants/paths.dart';

class CustomText extends StatelessWidget {
  final double size;
  final String text;
  
  final Color color;
  final FontWeight? weight;
  const CustomText(
      {super.key,
      required this.text,
      required this.size,
      required this.color,
      this.weight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: weight,
          fontFamily: CustomFonts.primaryText,
          color: color,
          fontSize: mediaquerywidth(size, context)),
    );
  }
}
