// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class DataModel {
  final int userId;
  final int id;
  final String title;

  DataModel({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
        userId: json['userId'], id: json['id'], title: json['title']);
  }
}
