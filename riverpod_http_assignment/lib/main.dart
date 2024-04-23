import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:async';
import 'dart:convert';

void main() {
  runApp(
    const ProviderScope(
      child: RiverpodHttp(),
    ),
  );
}

final riverPodProvider = StateProvider<List>((ref) => []);

class RiverpodHttp extends StatelessWidget {
  const RiverpodHttp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HttpRiverpod(),
    );
  }
}

class HttpRiverpod extends ConsumerWidget {
  const HttpRiverpod({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Riverped  HTTP",
                style: TextStyle(color: Colors.white),
              ),
              Text("Click the Floating action Button",
                  style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 14, 14, 14),
      ),
      body: ListView.builder(
        itemCount: ref.watch(riverPodProvider).length,
        itemBuilder: (context, index) {
          final result = ref.watch(riverPodProvider);
          return ListTile(
            leading: Text(result[index]['id'].toString()),
            title: Text(result[index]['title']),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () async {
          final List res = await fetchPost();
          ref.read(riverPodProvider.state).state = res;
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Text(
            "Show more",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Future<List> fetchPost() async {
    const url = "https://jsonplaceholder.org/posts";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    debugPrint(json.toString());
    debugPrint("asfd fasd sdf asdfasdfasdf fsa");
    return List.from(json);
  }
}
