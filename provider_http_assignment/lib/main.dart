import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'dart:convert';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => GetFetchProvider(),
      child: const ProviderHttp(),
    ),
  );
}

class ProviderHttp extends StatelessWidget {
  const ProviderHttp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Provider HTTP",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "Click the Floating action button",
                style: TextStyle(color: Colors.white),
              ),
            ],
          )),
        ),
        body: Consumer<GetFetchProvider>(builder: (context, result, child) {
          return ListView.builder(
              itemCount: result.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text(result.posts[index]['id'].toString()),
                  title: Text(result.posts[index]['title']),
                );
              });
        }),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            Provider.of<GetFetchProvider>(context, listen: false)
                .fetchPost(context);
          },
          child: const Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              "Show more",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class GetFetchProvider extends ChangeNotifier {
  List _posts = [];
  List get posts => _posts;

  int get length => _posts.length;

  void fetchPost(BuildContext context) async {
    const url = "https://jsonplaceholder.org/posts";
    final uri = Uri.parse(url);
    try {
      final response = await http.get(uri);
      final body = response.body;
      final json = jsonDecode(body);
      _posts = List.from(json);
      notifyListeners();
      debugPrint(json.toString());
    } catch (error) {
      debugPrint("Error fetching data: $error");
    }
  }
}
