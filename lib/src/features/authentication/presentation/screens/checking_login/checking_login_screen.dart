import 'package:clm_trujillo_app/src/core/constants/image_strings.dart';
import 'package:clm_trujillo_app/src/core/common/hola/size_config.dart';
import 'package:flutter/material.dart';

class CheckingLogin extends StatelessWidget {
  const CheckingLogin({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.blockSizeH!;
    double height = SizeConfig.blockSizeV!;

    return Scaffold(
      body: SizedBox(
        width: width * 100,
        height: height * 100,
        child: Center(
          child: SizedBox(
            width: width * 40,
            height: width * 40,
            child: const Image(
              image: AssetImage(tLogo),
            ),
          ),
        ),
      ),
    );
  }
}
