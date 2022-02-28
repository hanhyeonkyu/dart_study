library utility_usage;

import 'dart:convert';
import 'dart:io';
import 'dart:math';

export 'utility_usage.dart';

void utility_usage() async {
  print(' ');
  // comparable objects
  var short = const Line(1);
  var long = const Line(100);
  print(short.compareTo(long));
  print(' ');
  // implementing map keys
  var p1 = Person('Bob', 'Smith');
  var p2 = Person('Bob', 'Smith');
  var p3 = 'not a person';
  print(p1.hashCode == p2.hashCode);
  print(p1);
  print(p1 == p2);
  print(p1 != p3);
  print(' ');
  // Future
  // case1
  // void runUsingFuture() {
  // // ...
  //   findEntryPoint().then((entryPoint) {
  //     return runExecutable(entryPoint, args);
  //   }).then(flushThenExit);
  // }
  // case2
  // Future<void> runUsingAsyncAwait() async {
  //   // ...
  //   var entryPoint = await findEntryPoint();
  //   var exitCode = await runExecutable(entryPoint, args);
  //   await flushThenExit(exitCode);
  // }
  // case3
  // var entryPoint = await findEntryPoint();
  // try {
  //   var exitCode = await runExecutable(entryPoint, args);
  //   await flushThenExit(exitCode);
  // } catch (e) {
  //   // Handle the error...
  // }
  // async for loop use listen()
  // void main(List<String> arguments) {
  //   // ...
  //   FileSystemEntity.isDirectory(searchPath).then((isDir) {
  //     if (isDir) {
  //       final startingDir = Directory(searchPath);
  //       startingDir.list().listen((entity) {
  //         if (entity is File) {
  //           searchFile(entity, searchTerms);
  //         }
  //       });
  //     } else {
  //       searchFile(File(searchPath), searchTerms);
  //     }
  //   });
  // }
  // async for loop use await for
  // void main(List<String> arguments) async {
  //   // ...
  //   if (await FileSystemEntity.isDirectory(searchPath)) {
  //     final startingDir = Directory(searchPath);
  //     await for (final entity in startingDir.list()) {
  //       if (entity is File) {
  //         searchFile(entity, searchTerms);
  //       }
  //     }
  //   } else {
  //     searchFile(File(searchPath), searchTerms);
  //   }
  // }
  // readFileAwaitFor();
  // readFileWithDone();
  print(' ');
  // math and random
  print(cos(pi));
  print(sin(30 * (pi / 180)));
  print(max(2, 5));
  print(min(2, 5));
  print(Random());
  print(Random().nextDouble());
  print(Random().nextInt(100));
  print(Random().nextBool());
  print(' ');
}

class Line implements Comparable<Line> {
  final int length;
  const Line(this.length);
  @override
  int compareTo(Line other) => (length - other.length).abs();
}

class Person {
  final String firstName, lastName;
  Person(this.firstName, this.lastName);
  @override
  int get hashCode => Object.hash(firstName, lastName);
  @override
  bool operator ==(dynamic other) {
    return other is Person &&
        other.firstName == firstName &&
        other.lastName == lastName;
  }
}

Future<void> readFileAwaitFor() async {
  var config = File('config.txt');
  Stream<List<int>> inputStream = config.openRead();

  var lines =
      inputStream.transform(utf8.decoder).transform(const LineSplitter());
  try {
    await for (final line in lines) {
      print('Got ${line.length} characters from stream');
    }
    print('file is now closed');
  } catch (e) {
    print(e);
  }
}

Future<void> readFileWithDone() async {
  var config = File('config.txt');
  Stream<List<int>> inputStream = config.openRead();
  inputStream.transform(utf8.decoder).transform(const LineSplitter()).listen(
      (String line) {
    print('Got ${line.length} characters from stream');
  }, onDone: () {
    print('file is now closed');
  }, onError: (e) {
    print(e);
  });
}
