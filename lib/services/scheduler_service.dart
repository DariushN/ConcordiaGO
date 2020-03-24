import 'package:concordia_go/utilities/concordia_constants.dart' as concordia_constants;

class schedulerService {
  static bool isShuttlePossible = true;
  static int nextShuttleTime = 0;

  static int scheduleNextShuttleTime(String currentTimeInStringFormat, String departureCampus) {
    isShuttlePossible = false;
    var currentTime = stringTimeToInt(currentTimeInStringFormat);
    var currentDay = DateTime.now().weekday;
    var todaysShuttleTimes = ((concordia_constants.shuttleStops[concordia_constants.campusSGW]
        [concordia_constants.shuttleSchedule] as List)[currentDay - 1] as List);
    todaysShuttleTimes.isEmpty ? isShuttlePossible = false : isShuttlePossible = true;
    if (isShuttlePossible == false) {
      return -1;
    }
    var i = 0;
    while (todaysShuttleTimes[i] < currentTime) {
      i++;
    }
    nextShuttleTime = todaysShuttleTimes[i];
    return todaysShuttleTimes[i];
  }

  static String intTimeToString(int timeInIntFormat) {
    var minutes = timeInIntFormat.remainder(60);
    var hours = (timeInIntFormat / 60).floor();
    var newTime;
    if (minutes < 10) {
      newTime = "${hours}:0${minutes}";
    } else {
      newTime = "${hours}:${minutes}";
    }
    return newTime;
  }

  static String calculateTotalArrivalTime(walkToShuttleStop, walkToDestination, String departureCampus) {
    var currentTime = DateTime.now();
    var currentTimeInIntFormat = currentTime.hour * 60 + currentTime.minute;
    var busDepartureTime =
        schedulerService.scheduleNextShuttleTime(intTimeToString(walkToShuttleStop), departureCampus);
    if (busDepartureTime == -1) {
      return 'No Buses';
    }
    int totalTime = currentTimeInIntFormat +
        (busDepartureTime - currentTimeInIntFormat) +
        (walkToDestination - currentTimeInIntFormat) +
        30;
    return intTimeToString(totalTime);
  }

  static String calculateNewTime(String timeInStringFormat, timeToAdd) {
    var brokenTimeValues = timeInStringFormat.split(':');
    var hours = int.parse(brokenTimeValues[0]);
    var minutes = int.parse(brokenTimeValues[1]) + timeToAdd;
    if (minutes > 60) {
      hours++;
      minutes -= 60;
    }
    var newTime;
    if (minutes < 10) {
      newTime = "${hours}:0${minutes}";
    } else {
      newTime = "${hours}:${minutes}";
    }
    return newTime;
  }

  static int stringTimeToInt(String timeInStringFormat) {
    var timeInMinutes;
    var brokenTimeValues = timeInStringFormat.split(':');
    timeInMinutes = int.parse(brokenTimeValues[0]) * 60 + int.parse(brokenTimeValues[1]);
    return timeInMinutes;
  }

  static String calculateArrivalTimeinStringFormat(durationJSON) {
    durationJSON;
    List<String> durationToSplit = durationJSON.split(' ');
    var duration;
    if (durationToSplit.length == 2) {
      duration = int.parse(durationToSplit[0]);
    } else {
      duration = int.parse(durationToSplit[0]) * 60 + int.parse(durationToSplit[2]);
    }
    var currentTime = DateTime.now();
    var newDuration = Duration(days: 0, hours: 0, minutes: duration);
    var calculated_time = currentTime.add(newDuration);
    var arrival_time;
    if (calculated_time.minute > 9) {
      arrival_time = '${calculated_time.hour.toString()}:${calculated_time.minute.toString()}';
    } else {
      arrival_time = '${calculated_time.hour.toString()}:0${calculated_time.minute.toString()}';
    }
    return arrival_time;
  }

  static int calculateArrivalTimeInIntFormat(durationJSON) {
    durationJSON;
    List<String> durationToSplit = durationJSON.split(' ');
    var duration;
    if (durationToSplit.length == 2) {
      duration = int.parse(durationToSplit[0]);
    } else if (durationToSplit[1] == 'hour' || durationToSplit[1] == 'hours') {
      duration = int.parse(durationToSplit[0]) * 60 + int.parse(durationToSplit[2]);
    } else if (durationToSplit[1] == 'day' || durationToSplit[1] == 'days') {
      duration = int.parse(durationToSplit[0]) * 1440 + int.parse(durationToSplit[2]) * 60;
    }
    return duration;
  }
}
