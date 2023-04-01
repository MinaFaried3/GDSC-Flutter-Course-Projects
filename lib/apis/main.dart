import 'package:flutter/material.dart';
import 'package:gdsc2/apis/post_model.dart';

import 'dio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<PostModel> posts = [];

  @override
  Widget build(BuildContext context) {
    loadPosts();
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (contex, idx) {
          return Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            child: Text(posts[idx].title!),
          );
        },
        itemCount: posts.length,
      ),
    );
  }

  void loadPosts() {
    DioServices().getPosts().then((response) {
      if (response.isNotEmpty) {
        setState(() {
          var post =
              response.map((element) => PostModel.fromJson(element)).toList();
          posts.addAll(post);
        });
      }
    });
  }
}
