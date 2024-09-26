import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maser_project/core/constants/image_strings.dart';
import 'package:maser_project/core/theming/text_styles.dart';

class OnboardingImageStack extends StatelessWidget {
  const OnboardingImageStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Background
          SvgPicture.asset(
            CImages.onboardingBackground,
            fit: BoxFit.cover,
          ),

          // Doctor
          Positioned(
            child: Container(
                foregroundDecoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Colors.white,
                          Colors.white.withOpacity(0.0),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        stops: const [0.14, 0.7])),
                child: const Image(
                  image: AssetImage(CImages.onboardingDoctor),
                  fit: BoxFit.contain,
                )),
          ),

          // Text
          Positioned(
              bottom: 30,
              left: 0,
              right: 0,
              child: Text(
                'Best Doctor\nAppointment App',
                style: TextStyles.font32PrimaryWeightBold.copyWith(height: 1.4),
                textAlign: TextAlign.center,
              )),
        ],
      ),
    );
  }
}
