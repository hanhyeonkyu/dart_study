library convert_usage;

import 'string_apis.dart';

export 'covert_usage.dart';

void ext_usage() {
  print(' ');
  // string to num
  print('42'.parseInt());
  print('42'.parseDouble());
  print('42.234'.parseNum());
  print('42'.parseNum());
  print(' ');
  // try - catch
  try {
    print('42.23'.parseInt());
  } catch (e) {
    print(e);
  }
  print(' ');
  // type check
  print(int.parse('42') == 42);
  print(int.parse('0x42') == 66);
  print(double.parse('0.50') == 0.5);
  print(num.parse('42') is int);
  print(num.parse('0x42') is int);
  print(num.parse('0.50') is double);
  print(' ');
  // convert to string
  print(42.toString() == '42');
  print(123.456.toString() == '123.456');
  print(123.456.toStringAsFixed(2) == '123.46');
  print(123.456.toStringAsPrecision(2) == '1.2e+2');
  print(double.parse('1.2e+2') == 120.0);
  print(' ');
  // string manipulate
  print('42'.padLeft(5));
  var parts = 'progressive web apps'.split(' ');
  print(parts.length == 3);
  print(parts[0] == 'progressive');
  print('Never odd or even'[0] == 'N');
  for (final char in 'hello'.split('')) {
    print(char);
  }
  var codeUnitList = 'Never odd or even'.codeUnits.toList();
  print(codeUnitList);
  print(codeUnitList[0] == 78);
  print('web apps'.toUpperCase() == 'WEB APPS');
  print('WEB APPS'.toLowerCase() == 'web apps');
  print('  hello  '.trim() == 'hello');
  var greetingTemplate = 'Hello, NAME! I am NAME too!';
  var greeting = greetingTemplate.replaceAll(RegExp('NAME'), 'Bob');
  print('$greeting $greetingTemplate');
  var sb = StringBuffer();
  sb
    ..write('Use a StringBuffer for \n')
    ..writeAll(['efficient', 'string', 'creation'], '\t')
    ..write('.');
  var fullString = sb.toString();
  print(fullString);
  var numbers = RegExp(r'\d+');
  var allCharacters = 'llamas live fifteen to twenty years';
  var someDigits = 'llamas live 15 to 20 years';
  print(!allCharacters.contains(numbers));
  print(someDigits.contains(numbers));
  var exedOut = someDigits.replaceAll(numbers, 'XX');
  print(exedOut);
  print(' ');
  // search inside string
  print('Never odd or even'.contains('odd'));
  print('Never odd or even'.startsWith('Never'));
  print('Never odd or even'.endsWith('even'));
  print('Never odd or even'.indexOf('odd') == 6);
  print('Never odd or even'.substring(6, 9) == 'odd');
  print(' ');
}
