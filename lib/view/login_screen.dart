import 'package:flutter/material.dart';
import 'package:love_ally/utils/color_theme/colors.dart';
import 'package:love_ally/utils/constants/app_button.dart';
import 'package:love_ally/utils/constants/app_textfields.dart';
import 'package:love_ally/utils/constants/custom_strings.dart';
import 'package:love_ally/utils/constants/custom_text.dart';
import 'package:love_ally/utils/constants/mediaquery.dart';
import 'package:love_ally/utils/constants/paths.dart';
import 'package:love_ally/utils/constants/screen_padding.dart';
import 'package:love_ally/utils/constants/sizedbox.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.splashBlurImage),
                fit: BoxFit.cover)),
        child: Padding(
          padding: commonScreenPadding(context),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomSizedBoxHeight(0.2),
                const CustomText(
                  text: TextStrings.loginMainText,
                  color: Colors.white,
                  size: 0.06,
                ),
                const CustomSizedBoxHeight(0.04),
                Container(
                  width: double.infinity,
                  height: mediaqueryheight(0.3, context),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      color: const Color.fromRGBO(30, 30, 30, 1)),
                  child: Column(
                    children: [
                      const CustomSizedBoxHeight(0.04),
                      const Inputfield(hinttext: 'user name'),
                      const CustomSizedBoxHeight(0.03),
                      const Inputfield(hinttext: 'password'),
                      const CustomSizedBoxHeight(0.02),
                      CustomButton(
                        color: AppColors.buttonColor,
                        bordercolor: Colors.transparent,
                        fontSize: 0.03,
                        buttontextcolor: Colors.white,
                        function: () {},
                        text: 'Login',
                      )
                    ],
                  ),
                ),
                const CustomSizedBoxHeight(0.06),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                          text: 'Are you new user ? SIGN UP',
                          size: 0.04,
                          color: AppColors.whiteColor)
                    ]),
                const CustomSizedBoxHeight(0.06),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
