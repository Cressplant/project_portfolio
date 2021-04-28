
import 'dart:convert';
import 'dart:html';

void downloadFile(
    List<int> bytes, {
      required String fileName,
    }) {

  final _base64 = base64Encode(bytes);

  final anchor =
  AnchorElement(href: 'data:application/octet-stream;base64,$_base64')
    ..target = 'blank';
    anchor.download = fileName;

  document.body?.append(anchor);
  anchor.click();
  anchor.remove();
  return;

}