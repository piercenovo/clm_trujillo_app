import 'package:flutter/material.dart';

import 'package:clm_trujillo_app/src/core/constants/text_strings.dart';

import 'package:boxicons/boxicons.dart';

class ContactUs {
  final IconData icon;
  final String title;
  final String launch;

  ContactUs({
    required this.icon,
    required this.title,
    required this.launch,
  });
}

final List<ContactUs> contactUsContent = [
  ContactUs(
    icon: Boxicons.bx_phone,
    title: tContactUsSubtitle1,
    launch: tContactUsLaunch1,
  ),
  ContactUs(
    icon: Boxicons.bx_world,
    title: tContactUsSubtitle2,
    launch: tContactUsLaunch2,
  ),
  ContactUs(
    icon: Boxicons.bxl_facebook_circle,
    title: tContactUsSubtitle3,
    launch: tContactUsLaunch3,
  ),
  ContactUs(
    icon: Boxicons.bxl_instagram,
    title: tContactUsSubtitle4,
    launch: tContactUsLaunch4,
  )
];
