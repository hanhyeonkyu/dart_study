library iterable;

export 'iterable.dart';

void iter_usage() {
  print(' ');
  // for loop
  const iterable = ["test", "fsdf", "xzcvc"];
  for (final it in iterable) {
    print(it);
  }
  print(' ');
  // forEach loop
  var teas = ['green', 'black', 'chamomile', 'earl grey'];
  teas.forEach((tea) => print('I drink $tea'));
  print(' ');
  var hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
  };
  hawaiianBeaches.forEach((k, v) {
    print('I want to visit $k and swim at $v');
  });
  print(' ');
  // map loop
  var loudTeas = teas.map((tea) => tea.toUpperCase()).toList();
  print(loudTeas);
  print(' ');
  // where any every
  bool isDecaffeinated(String teaName) => teaName == 'chamomile';
  var decaffeinatedTeas = teas.where(isDecaffeinated);
  print(decaffeinatedTeas);
  print(teas.any(isDecaffeinated));
  print(teas.every(isDecaffeinated));
  print(' ');
}
