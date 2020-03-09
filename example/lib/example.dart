import 'package:clock/clock.dart';

class ClockExample {
  /// returns the number of days from the current date to [future]
  int daysFromNow(DateTime future) {
    const maximumDstLoss = 1; // max hours lost to DST

    // By using clock.now() instead of DateTime.now()
    // unit tests can control the current time
    var todayWithTime = clock.now();

    var today =
        DateTime(todayWithTime.year, todayWithTime.month, todayWithTime.day);
    var tomorrow =
        DateTime(future.year, future.month, future.day, maximumDstLoss);
    var diff = tomorrow.difference(today);
    return diff.inDays;
  }
}
