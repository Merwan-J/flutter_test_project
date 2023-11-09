import 'package:flutter_test_project/models/Author.dart';
import 'package:flutter_test_project/models/Comment.dart';

class PostModel {
  final String imageUrl;
  final String caption;
  final int likes;
  final List<CommentModel> comments;
  final AuthorModel author; // Add this line

  PostModel({
    required this.imageUrl,
    required this.caption,
    required this.likes,
    required this.comments,
    required this.author, // And this line
  });
}
