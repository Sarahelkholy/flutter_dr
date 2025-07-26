import 'package:dr/core/helpers/spacing.dart';
import 'package:dr/core/theming/styles.dart';
import 'package:dr/core/widgets/app_text_button.dart';
import 'package:dr/core/widgets/app_text_form_field.dart';
import 'package:dr/features/login/ui/widgets/already_have_an_account_text.dart';
import 'package:dr/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formkey = GlobalKey<FormState>();
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 30.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: Textstyles.font24BlueBold,
                ),
                verticalSpacing(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: Textstyles.font14GreyRegular,
                ),
                verticalSpacing(36),
                Form(
                  key: formkey,
                  child: Column(
                    children: [
                      AppTextFormField(
                        hintText: 'Email',
                      ),
                      verticalSpacing(18),
                      AppTextFormField(
                        hintText: 'Password',
                        isObscureText: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () => setState(() {
                            isObscureText = !isObscureText;
                          }),
                          child: Icon(
                            isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                verticalSpacing(24),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text(
                    'Forgot Password?',
                    style: Textstyles.font13BlueRegular,
                  ),
                ),
                verticalSpacing(20),
                AppTextButton(
                  buttontext: 'Login',
                  onPressed: () {},
                  textStyle: Textstyles.font16WhiteSemiBold,
                ),
                Column(
                  children: [
                    verticalSpacing(16),
                    const TermsAndConditionsText(),
                    verticalSpacing(60),
                    const AlreadyHaveAnAccountText(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
