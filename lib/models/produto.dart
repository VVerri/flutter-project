import 'package:flutter/cupertino.dart';

@immutable
class Produto {
  int id;
  int category;
  double valor;
  String title;
  String image;
  String description;

  Produto({
    required this.id,
    required this.category,
    required this.valor,
    required this.title,
    required this.image,
    required this.description,
  });
}
