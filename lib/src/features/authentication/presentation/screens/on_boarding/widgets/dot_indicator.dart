import 'package:flutter/material.dart';

import 'package:clm_trujillo_app/src/core/constants/colors.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    this.isActive = false,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isActive ? 12 : 5,
      width: 5,
      decoration: const BoxDecoration(
          color: tPrimaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          )),
    );
  }
}
