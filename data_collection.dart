library data_collection;

export 'data_collection.dart';

void data_collection_usage() {
  print(' ');
  // list manipulate
  var grains = <String>[];
  print(grains.isEmpty);
  var fruits = ['apples', 'oranges'];
  fruits.add('kiwis');
  fruits.addAll(['grapes', 'bananas']);
  print(fruits.length);
  var appleIndex = fruits.indexOf('apples');
  fruits.removeAt(appleIndex);
  print(fruits.length);
  fruits.clear();
  print(fruits.isEmpty);
  var vegetables = List.filled(99, 'broccoli');
  print(vegetables.every((v) => v == 'broccoli'));
  fruits = ['bananas', 'apples', 'oranges'];
  fruits.sort((a, b) => a.compareTo(b));
  print(fruits);
  fruits.sort((a, b) => b.compareTo(a));
  print(fruits);
  var nums = [123123, 34354366, 768];
  nums.sort((a, b) => a.compareTo(b));
  print(nums);
  nums.sort((a, b) => b.compareTo(a));
  print(nums);
  print(' ');
  // set manipulate
  var ingredients = <String>{};
  ingredients.addAll(['gold', 'titanium', 'xenon']);
  print(ingredients.length == 3);
  ingredients.add('gold');
  print(ingredients.length == 3);
  ingredients.remove('gold');
  print(ingredients.length == 2);
  var atomicNumbers = Set.from([79, 22, 54, 23, 22, 54]);
  print(atomicNumbers);
  print(ingredients.contains('titanium'));
  print(ingredients.containsAll(['titanium', 'xenon']));
  var nobleGases = Set.from(['xenon', 'argon']);
  var intersection = ingredients.intersection(nobleGases);
  print(intersection);
  print(' ');
  // map manipulate
  var hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
  };
  var searchTerms = Map();
  var goodPlases = Map<int, String>();
  goodPlases = {54: 'xenon'};
  print(goodPlases[54]);
  print(goodPlases.containsKey(54));
  goodPlases.remove(54);
  print(!goodPlases.containsKey(54));
  var keys = hawaiianBeaches.keys;
  print(keys);
  print(Set.from(keys).contains('Oahu'));
  var values = hawaiianBeaches.values;
  print(values);
  print(values.any((v) => v.contains('Waikiki')));
  print(' ');
}
