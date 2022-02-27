library date_usage;

export 'date_usage.dart';

void date_usage() {
  print(' ');
  // initialize date and time
  var now = DateTime.now();
  print(now);
  var y2k = DateTime(2000); // January 1, 2000
  print(y2k);
  y2k = DateTime(2000, 1, 2); // January 2, 2000
  print(y2k);
  y2k = DateTime.utc(2000); // 1/1/2000, UTC
  print(y2k);
  y2k = DateTime.fromMillisecondsSinceEpoch(946684800000, isUtc: true);
  print(y2k);
  y2k = DateTime.parse('2000-01-01T00:00:00Z');
  print(y2k);
  print(' ');
  // milisecondsSinceEpoch, duration
  y2k = DateTime.utc(2000);
  print(y2k.millisecondsSinceEpoch);
  var unixEpoch = DateTime.utc(1970);
  print(unixEpoch.millisecondsSinceEpoch);
  var y2001 = y2k.add(const Duration(days: 366));
  print(y2001);
  var december2000 = y2001.subtract(const Duration(days: 31));
  print(december2000);
  var duration = y2001.difference(y2k);
  print(duration.inDays);
  print(december2000.year);
  print(december2000.month);
  print(december2000.day);
  print(' ');
}
