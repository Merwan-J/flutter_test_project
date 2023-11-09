// Create sample author data
import 'package:flutter_test_project/models/Author.dart';
import 'package:flutter_test_project/models/Comment.dart';
import 'package:flutter_test_project/models/Post.dart';

List<AuthorModel> authors = List.generate(
    7,
    (index) => AuthorModel(
          name: 'Author ${index + 1}',
          username: '@author${index + 1}',
          userProfileUrl: 'asssets/images/bg.profile.png',
        ));

PostModel post = PostModel(
  imageUrl: 'assets/images/bg.png',
  caption:
      'The error message youre seeing is because youre trying to add a Positioned? (nullable Positioned) to a list of Widget. In Dart, you cant add a nullable type to a list of non-nullable type. The error message youre seeing is because youre trying to add a Positioned? (nullable Positioned) to a list of Widget. In Dart, you cant add a nullable',
  likes: 100,
  comments: comments,
  author: authors[0], // The first author is the post owner
);
// Create sample comment data
List<CommentModel> comments = List.generate(
    6,
    (index) => CommentModel(
          author: authors[index + 1], // Start from the second author
          content: 'Comment ${index + 1}',
          likes: (index + 1) * 10,
          replies: [],
          post: post, // We'll set this later
        ));

// Create sample post data


// Set the post field of the comments
