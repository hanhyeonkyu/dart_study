library data_collection;

export 'data_collection.dart';

void data_collection_usage() {
  print(' ');
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
}
