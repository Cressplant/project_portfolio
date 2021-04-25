
import 'dart:convert';
import 'dart:html';

void downloadFile(
    List<int> bytes, {
      required String fileName,
    }) {
  // Encode our file in base64
  final _base64 = base64Encode(bytes);
  // Create the link with the file
  final anchor =
  AnchorElement(href: 'data:application/octet-stream;base64,$_base64')
    ..target = 'blank';
  // add the name
  if (fileName != null) {
    anchor.download = fileName;
  }
  // trigger download
  document.body?.append(anchor);
  anchor.click();
  anchor.remove();
  return;

}