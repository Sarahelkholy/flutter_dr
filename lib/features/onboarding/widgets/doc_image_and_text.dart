import 'package:dr/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocImageAndText extends StatelessWidget {
  const DocImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
            child: SvgPicture.asset('assets/svg/docdoc_logo_low_opacity.svg')),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
            ),
          ),
          child: Image.asset('assets/images/onboarding_doctor_image.png'),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Text('Best Doctor\n Appointment App',
              textAlign: TextAlign.center,
              style: Textstyles.font32Blue700weight.copyWith(
                height: 1.4,
              )),
        ),
      ],
    );
  }
}
