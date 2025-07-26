import 'package:dr/core/theming/styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
                text: 'By logging, you agree to our',
                style: Textstyles.font13GreyRegular),
            TextSpan(
                text: ' Terms & Conditions ',
                style: Textstyles.font13DarkblueMedium),
            TextSpan(
                text: 'and ',
                style: Textstyles.font13GreyRegular.copyWith(height: 1.5)),
            TextSpan(
                text: 'PrivacyPolicy.', style: Textstyles.font13DarkblueMedium),
          ],
        ));
  }
}
