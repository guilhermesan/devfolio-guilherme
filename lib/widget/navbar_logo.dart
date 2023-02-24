import 'package:flutter/material.dart';
import 'package:folio/configs/app_typography.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "",
          style: AppText.b1,
        ),
        Text(
          "Guilherme Sant'Ana",
          style: AppText.b1b!.copyWith(
            fontFamily: 'Agustina',
          ),
        )
      ],
    );
  }
}
