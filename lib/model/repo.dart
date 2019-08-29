import 'package:flutter/material.dart';

class Repo {
  final String author;
  final String name;
  final String avatar;

  final String url;
  final String description;
  final String language;
  final String languageColor;
  final String stars;
  final String forks;

  const Repo(
      {@required this.author,
      @required this.name,
      @required this.url,
      this.avatar,
      this.description,
      this.language,
      this.languageColor,
      this.stars,
      this.forks});
}
