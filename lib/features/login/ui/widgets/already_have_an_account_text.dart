import 'package:dr/core/theming/styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccountText extends StatelessWidget {
  const AlreadyHaveAnAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
                text: 'Already have an account yet? ',
                style: Textstyles.font13DarkblueRegular),
            TextSpan(text: 'Sign Up', style: Textstyles.font13BlueSemiBold),
          ],
        ));
  }
}
