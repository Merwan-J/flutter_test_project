import 'package:flutter/material.dart';
import 'package:flutter_test_project/views/widgets/comment.dart';
import 'package:flutter_test_project/views/widgets/comment_form.dart';

class CommentSheet extends StatelessWidget {
  const CommentSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          padding: const EdgeInsets.all(7),
          decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10))),
          child: const Text(
            "45k comments",
            style: TextStyle(color: Colors.white),
          )),
      Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Comment();
          },
        ),
      ),
      const CommentForm()
    ]);
  }
}
