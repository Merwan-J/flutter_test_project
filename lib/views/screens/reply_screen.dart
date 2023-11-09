// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test_project/views/widgets/brief_comment.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';

class ReplyScreen extends StatefulWidget {
  const ReplyScreen({super.key});

  @override
  State<ReplyScreen> createState() => _ReplyScreenState();
}

class _ReplyScreenState extends State<ReplyScreen> {
  final TextEditingController _controller = TextEditingController();
  bool emojiShowing = false;
  bool keyboardShowing = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            flexibleSpace: Container(
              color: Colors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.image_rounded, size: 25),
                          onPressed: () {},
                        ),
                        const Center(
                          child: Text(
                            'SeeQul',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.arrow_forward_ios,
                              size: 20, color: Colors.black54),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Row(children: [
                      IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.filter_list),
                        onPressed: () {},
                      ),
                    ]),
                  ],
                ),
              ),
            ),
          ),
          body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_circle_left),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const Text("Reply"),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/profile-1.png'),
                      radius: 20,
                    ),
                    SizedBox(width: 10),
                    Expanded(child: BriefComment()),
                  ]),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.15),
              child: Text("Replying to John Doe @JohntheD",
                  style: TextStyle(color: Colors.amber)),
            ),
            Divider(thickness: 1),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(
                      171, 158, 158, 158), // Set your desired color here
                  width: 1, // Set the width of the border here
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile-2.png'),
                    radius: 20,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      onTap: () async {
                        setState(() {
                          emojiShowing = !emojiShowing;
                          keyboardShowing = !keyboardShowing;
                        });
                        await Future.delayed(const Duration(milliseconds: 250));
                        if (emojiShowing) FocusScope.of(context).unfocus();
                      },
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 13),
                        alignLabelWithHint: true,
                        prefixIcon: IconButton(
                          onPressed: () async {
                            setState(() {
                              emojiShowing = !emojiShowing;
                              keyboardShowing = !keyboardShowing;
                            });
                            await Future.delayed(
                                const Duration(milliseconds: 350));
                            if (emojiShowing) FocusScope.of(context).unfocus();
                          },
                          icon: const Icon(
                            Icons.emoji_emotions_outlined,
                            color: Color(0xff5F6368),
                            size: 35,
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xffC4C4C4)),
                            borderRadius: BorderRadius.circular(25)),
                        label: const Text(
                          'Add comment',
                          style: TextStyle(color: Color(0xff5F6368)),
                        ),
                        suffixIcon: IconButton(
                            icon: const Icon(
                              Icons.send,
                              color: Color(0xff5C8DFF),
                            ),
                            onPressed: () {
                              FocusScope.of(context).unfocus();
                            }),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (emojiShowing)
              SizedBox(
                height: MediaQuery.of(context).size.height * .35,
                child: EmojiPicker(
                  textEditingController: _controller,
                  config: Config(
                      columns: 7,
                      emojiSizeMax: 32 * (Platform.isIOS ? 1.30 : 1.0)),
                ),
              )
          ])),
    );
  }
}
