import 'package:clm_trujillo_app/src/core/constants/text_strings.dart';

class ServiceTimes {
  final String title;
  final String day;
  final List<String> dates;

  ServiceTimes({
    required this.title,
    required this.day,
    required this.dates,
  });
}

final List<ServiceTimes> serviceTimesContent = [
  ServiceTimes(
    title: tInvitationWeeklySubtitle1,
    day: tInvitationWeeklyDay1,
    dates: tInvitationWeeklyDates1,
  ),
  ServiceTimes(
    title: tInvitationWeeklySubtitle2,
    day: tInvitationWeeklyDay2,
    dates: tInvitationWeeklyDates2,
  ),
  ServiceTimes(
    title: tInvitationWeeklySubtitle3,
    day: tInvitationWeeklyDay3,
    dates: tInvitationWeeklyDates3,
  ),
  ServiceTimes(
    title: tInvitationWeeklySubtitle4,
    day: tInvitationWeeklyDay4,
    dates: tInvitationWeeklyDates4,
  )
];
