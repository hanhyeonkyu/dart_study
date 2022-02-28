library enc_dec;

import 'dart:convert';

export 'enc_dec.dart';

void enc_dec() {
  print(' ');
  // encode decode json
  var jsonString = '''
  [
    {"score": 40},
    {"score": 80}
  ]
''';

  var scores = jsonDecode(jsonString);
  print(scores);
  print(scores is List);
  var firstScore = scores[0];
  print(firstScore is Map);
  print(firstScore['score']);
  print(jsonEncode(scores));
  print(' ');
  // encode decode utf8
  List<int> utf8Bytes = [
    0xc3,
    0x8e,
    0xc3,
    0xb1,
    0xc5,
    0xa3,
    0xc3,
    0xa9,
    0x72,
    0xc3,
    0xb1,
    0xc3,
    0xa5,
    0xc5,
    0xa3,
    0xc3,
    0xae,
    0xc3,
    0xb6,
    0xc3,
    0xb1,
    0xc3,
    0xa5,
    0xc4,
    0xbc,
    0xc3,
    0xae,
    0xc5,
    0xbe,
    0xc3,
    0xa5,
    0xc5,
    0xa3,
    0xc3,
    0xae,
    0xe1,
    0xbb,
    0x9d,
    0xc3,
    0xb1
  ];
  var funnyWord = utf8.decode(utf8Bytes);
  print(funnyWord);
  List<int> encoded = utf8.encode('Îñţérñåţîöñåļîžåţîờñ');
  print(encoded.length == utf8Bytes.length);
  for (int i = 0; i < encoded.length; i++) {
    print(encoded[i]);
  }
  print(' ');
}
