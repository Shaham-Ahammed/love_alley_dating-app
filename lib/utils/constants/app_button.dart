import 'package:flutter/material.dart';
import 'package:love_ally/utils/constants/custom_text.dart';
import 'package:love_ally/utils/constants/mediaquery.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final Function() function;
  final String text;
  final double fontSize;
  final Color buttontextcolor;
  final Color bordercolor;
  const CustomButton({
    super.key,
    required this.color,
    required this.function,
    required this.text,
    required this.fontSize,
    required this.buttontextcolor,
    required this.bordercolor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(90),
      color: color,
      child: InkWell(
        borderRadius: BorderRadius.circular(90),
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: bordercolor),
            borderRadius: BorderRadius.circular(90),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: mediaquerywidth(0.14, context),
                vertical: mediaquerywidth(0.04, context)),
            child: CustomText(
              text: text,
              size: fontSize,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
