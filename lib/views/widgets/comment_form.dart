import 'package:flutter/material.dart';

class CommentForm extends StatefulWidget {
  const CommentForm({super.key});

  @override
  State<CommentForm> createState() => _CommentFormState();
}

class _CommentFormState extends State<CommentForm> {
  late bool _showEmojiKeyboard;

  @override
  Widget build(BuildContext context) {
    var _textEditingController;
    return Container(
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
              controller: _textEditingController,
              onTap: () {
                if (_showEmojiKeyboard) {
                  setState(() {
                    _showEmojiKeyboard = !_showEmojiKeyboard;
                  });
                }
              },
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                alignLabelWithHint: true,
                prefixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _showEmojiKeyboard = !_showEmojiKeyboard;
                    });
                    if (_showEmojiKeyboard) {
                      FocusScope.of(context).unfocus();
                    }
                  },
                  icon: const Icon(
                    Icons.emoji_emotions_outlined,
                    color: Color(0xff5F6368),
                    size: 35,
                  ),
                ),
                border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffC4C4C4)),
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
    );
  }
}
