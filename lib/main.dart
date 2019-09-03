import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:trending_repo_flutter/model/repo.dart';
import 'package:trending_repo_flutter/widgets/repo_item_widget.dart';
import 'dart:convert';

import 'API.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trending Repos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyListScreen(),
    );
  }
}

class MyListScreen extends StatefulWidget {
  @override
  createState() => _MyListScreenState();
}

class _MyListScreenState extends State {
  var repoList = new List<Repo>();

  _getRepos() async {
    API.getRepos().then((response) {
      setState(() {
        log("response: $response");
        Iterable list = json.decode(response.body);
        repoList = list.map((model) => Repo.fromJson(model)).toList();
        log("repos: $repoList");
      });
    });
  }

  initState() {
    super.initState();
    _getRepos();
  }

  dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Trending Repos',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: Scaffold(
          appBar: AppBar(title: Text('Trending Repos')),
          body: ListView.builder(
            itemCount: repoList.length,
            itemBuilder: (context, position) {
              final repoItem= repoList[position];
//              return ListTile(title: Text(repoItem.name));
              return RepoItem(
                repo: repoItem,
              );
            },
          ),
        ));
  }
}
