import 'package:flutter/material.dart';

import 'package:clm_trujillo_app/src/core/constants/text_strings.dart';
import 'package:clm_trujillo_app/src/core/constants/colors.dart';
import 'package:clm_trujillo_app/src/core/common/hola/size_config.dart';

import 'package:clm_trujillo_app/src/features/authentication/presentation/screens/home/home_screen.dart';
import 'package:clm_trujillo_app/src/features/authentication/presentation/screens/talks/talks_screen.dart';
import 'package:clm_trujillo_app/src/features/authentication/presentation/screens/plans/plans_screen.dart';
import 'package:clm_trujillo_app/src/features/authentication/presentation/screens/networks/networks_screen.dart';
import 'package:clm_trujillo_app/src/features/authentication/presentation/screens/more/more_screen.dart';

import 'package:boxicons/boxicons.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  final pages = [
    const HomeScreen(),
    const TalksScreen(),
    const PlansScreen(),
    const NetworksScreen(),
    const MoreScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          IndexedStack(
            index: currentIndex,
            children: pages,
          )
        ],
      ),
      extendBody: true,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: tExtraLightGrayColor,
              width: 0.1,
            ),
          ),
        ),
        child: _buildBottomNavigationBar(),
      ),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    SizeConfig().init(context);
    double height = SizeConfig.blockSizeV!;

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: (index) => setState(() {
        currentIndex = index;
      }),
      selectedFontSize: 10,
      selectedLabelStyle: TextStyle(
        height: height * 0.22,
        fontWeight: FontWeight.bold,
      ),
      selectedItemColor: tPrimaryColor,
      unselectedItemColor: tLightGrayColor,
      unselectedFontSize: 10,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Boxicons.bx_home_smile),
          activeIcon: Icon(Boxicons.bxs_home_smile),
          label: tHomeTitle,
        ),
        BottomNavigationBarItem(
          icon: Icon(Boxicons.bx_user_voice),
          activeIcon: Icon(Boxicons.bxs_user_voice),
          label: tTalksTitle,
        ),
        BottomNavigationBarItem(
          icon: Icon(Boxicons.bx_book_open),
          activeIcon: Icon(Boxicons.bxs_book_open),
          label: tPlansTitle,
        ),
        BottomNavigationBarItem(
          icon: Icon(Boxicons.bx_group),
          activeIcon: Icon(Boxicons.bxs_group),
          label: tNetworksTitle,
        ),
        BottomNavigationBarItem(
          icon: Icon(Boxicons.bx_folder_plus),
          activeIcon: Icon(Boxicons.bxs_folder_plus),
          label: tMoreTitle,
        ),
      ],
    );
  }
}
