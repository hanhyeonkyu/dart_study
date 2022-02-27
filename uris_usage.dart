library uris_usage;

export 'uris_usage.dart';

void uris_usage() {
  print(' ');
  // encode decode
  var uri = 'https://example.org/api?foo=some message';
  var encoded = Uri.encodeFull(uri);
  print(encoded);
  var decoded = Uri.decodeFull(encoded);
  print(decoded);
  uri = 'https://example.org/api?foo=some message';
  encoded = Uri.encodeComponent(uri);
  print(encoded);
  decoded = Uri.decodeComponent(encoded);
  print(decoded);
  print(' ');
  // parsing
  var site = Uri.parse('https://example.org:8080/foo/bar#frag');
  print(site.scheme);
  print(site.host);
  print(site.path);
  print(site.fragment);
  print(site.origin);
  site = Uri(
      scheme: 'https', host: 'example.org', path: '/foo/bar', fragment: 'frag');
  print(site.toString());
  print(' ');
}
