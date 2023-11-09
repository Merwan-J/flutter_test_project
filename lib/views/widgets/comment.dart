import 'package:flutter/material.dart';
import 'package:flutter_test_project/views/screens/reply_screen.dart';
import 'package:flutter_test_project/views/widgets/brief_comment.dart';

class Comment extends StatefulWidget {
  const Comment({super.key});

  @override
  State<Comment> createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile-1.png'),
            radius: 20,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BriefComment(),
                Row(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(Icons.comment_outlined, size: 30),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ReplyScreen()),
                              );
                            },
                          ), // const SizedBox(width: 5),
                          Text("15"),
                        ]),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                    const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.favorite_border_outlined, size: 30),
                          // const SizedBox(width: 5),
                          Text("7k"),
                        ]),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                    const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.outlined_flag_outlined, size: 30),
                        ])
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                    width: MediaQuery.of(context).size.width * 0.33,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(5)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("View 15 replies"),
                        Icon(Icons.arrow_forward_ios, size: 15)
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
