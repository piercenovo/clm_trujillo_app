import 'package:flutter/material.dart';

import 'package:clm_trujillo_app/src/core/constants/text_strings.dart';

import 'package:boxicons/boxicons.dart';

class Invitation {
  final IconData icon;
  final String title;
  final String subtitle;

  Invitation({
    required this.icon,
    required this.title,
    required this.subtitle,
  });
}

final List<Invitation> invitationContent = [
  Invitation(
    icon: Boxicons.bx_customize,
    title: tInvitationSubtitle1,
    subtitle: tInvitationDescription1,
  ),
  Invitation(
    icon: Boxicons.bx_send,
    title: tInvitationSubtitle2,
    subtitle: tInvitationDescription2,
  )
];
