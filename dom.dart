library dom;

import 'dart:html';

export 'dom.dart';

void dom() async {
  print(' ');
  // find elem
  print(await HttpRequest.getString("www.naver.com"));
  print(querySelector('#an-id'));
  print(' ');
}
