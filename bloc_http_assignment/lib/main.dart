import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:async';
import 'dart:convert';

void main() {
  runApp(
    const BlocHttp(),
  );
}

class BlocHttp extends StatelessWidget {
  const BlocHttp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (_) => FetchBloc(),
        child: const HttpBloc(),
      ),
    );
  }
}

class HttpBloc extends StatelessWidget {
  const HttpBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Bloc  HTTP",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Click the Floating action button",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
      body: BlocBuilder<FetchBloc, List>(builder: (context, result) {
        return ListView.builder(
            itemCount: result.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Text(result[index]['id'].toString()),
                title: Text(result[index]['title']),
              );
            });
      }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          context.read<FetchBloc>().add(FetchPressed());
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
}

abstract class FetchEvent {}

class FetchPressed extends FetchEvent {}

class FetchBloc extends Bloc<FetchEvent, List> {
  FetchBloc() : super([]) {
    on<FetchPressed>((event, emit) async {
      List res = await fetchPost();
      emit(res);
    });
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
