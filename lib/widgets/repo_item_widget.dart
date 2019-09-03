import 'package:flutter/material.dart';

import '../model/repo.dart';

class RepoItem extends StatelessWidget {
  final Repo repo;

  RepoItem({
    @required this.repo,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        margin: new EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
//              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.network(repo.avatar, width: 100, height: 140),
              ],
            ),
            Column(
//              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(2.0, 2.0, 2.0, 2.0),
                  child: Text(
                    repo.name,
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
