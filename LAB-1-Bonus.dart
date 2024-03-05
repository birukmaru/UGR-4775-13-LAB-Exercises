import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> downloadFile(String url, String savePath) async {
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    final file = File(savePath);
    await file.writeAsBytes(response.bodyBytes);
    print('Downloaded: $savePath');
  } else {
    throw Exception('Failed to download file: $url');
  }
}

Future<void> main() async {
  final urls = [
    'https://example.com/file1.txt',
    'https://example.com/file2.txt',
    'https://example.com/file3.txt',
  ];

  final savePaths = [
    'file1.txt',
    'file2.txt',
    'file3.txt',
  ];

  if (urls.length != savePaths.length) {
    print('Error: Number of URLs must match the number of save paths');
    return;
  }

  final futures = <Future>[];
  for (var i = 0; i < urls.length; i++) {
    final url = urls[i];
    final savePath = savePaths[i];
    futures.add(downloadFile(url, savePath).catchError((error) {
      print('Error downloading $url: $error');
    }));
  }

  await Future.wait(futures);
  print('All downloads completed!');
}
