import 'package:flutter/material.dart';
import 'package:flutter_test_project/views/widgets/comment_sheet.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/profile-2.png'),
          radius: 20,
        ),
        const SizedBox(height: 10),
        const Icon(
          Icons.view_column_outlined,
          size: 30.0,
          color: Colors.white,
        ),
        IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                builder: (BuildContext context) {
                  return Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.55,
                      child: CommentSheet(),
                    ),
                  );
                },
              );
              ;
            },
            icon: const Icon(
              Icons.comment_rounded,
              size: 30.0,
              color: Colors.white,
            )),
        const Icon(
          Icons.favorite,
          size: 30.0,
          color: Colors.white,
        ),
        const Icon(
          Icons.share_outlined,
          size: 30.0,
          color: Colors.white,
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
