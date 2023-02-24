import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';

import 'package:folio/utils/utils.dart';
import 'package:folio/widget/social_links.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      child: Container(
        margin: EdgeInsets.fromLTRB(
          AppDimensions.normalize(10),
          AppDimensions.normalize(40),
          0,
          0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "HEY THERE! ",
                  style: AppText.b2!.copyWith(
                    fontFamily: 'Montserrat',
                  ),
                ),
                Space.x!,
                Image.asset(
                  StaticUtils.hi,
                  height: AppDimensions.normalize(10),
                ),
              ],
            ),
            Space.y!,
            Text(
              "Guilherme",
              style: AppText.h3!.copyWith(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w100,
              ),
            ),
            Text(
              "Sant'Ana",
              style: AppText.h3b!.copyWith(
                height: 1,
              ),
            ),
            Space.y!,
            Row(
              children: [
                Icon(
                  Icons.play_arrow_rounded,
                  color: AppTheme.c!.primary!,
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      ' Flutter Developer',
                      speed: const Duration(milliseconds: 50),
                      textStyle: AppText.b1,
                    ),
                    TyperAnimatedText(
                      ' UI/UX Enthusiast',
                      speed: const Duration(milliseconds: 50),
                      textStyle: AppText.b1,
                    ),
                    TyperAnimatedText(
                      ' A friend :)',
                      speed: const Duration(milliseconds: 50),
                      textStyle: AppText.b1,
                    ),
                  ],
                  repeatForever: true,
                  isRepeatingAnimation: true,
                ),
              ],
            ),
            Space.y!,
            const SocialLinks(),
          ],
        ),
      ),
    );
  }
}
