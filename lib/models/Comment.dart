import 'package:flutter_test_project/models/Author.dart';
import 'package:flutter_test_project/models/Post.dart';

class CommentModel {
  final AuthorModel author;
  final String content;
  final int likes;
  final List<CommentModel> replies;
  final PostModel post;

  CommentModel({
    required this.author,
    required this.content,
    required this.likes,
    required this.replies,
    required this.post,
  });
}
