import 'package:clm_trujillo_app/src/core/utils/theme/theme.dart';
import 'package:clm_trujillo_app/src/features/authentication/presentation/screens/on_boarding/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CLM Trujillo',
      theme: theme(),
      home: const OnBoardingScreen(),
    );
  }
}
