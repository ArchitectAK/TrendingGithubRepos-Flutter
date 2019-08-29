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
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          elevation: 4,
          margin: EdgeInsets.all(8),
          child: Card(

          ),
        )
    );
  }
}
