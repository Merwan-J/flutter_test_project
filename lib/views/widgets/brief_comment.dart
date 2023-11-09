import 'package:flutter/material.dart';

class BriefComment extends StatelessWidget {
  const BriefComment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          const Row(
            children: [
              Text(
                "Kerry Jons",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 10),
              Text("@kerryjons", style: TextStyle(color: Colors.blue)),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
          ),
          const Text("2h ago"),
        ]),
        const SizedBox(height: 5),
        const Text(
            "Lorem ipsum dolor sit amet consectetur. Aliquam sagittis ullamcorper amet justo quisque ullamcorper volutpat. Donec feugiat diam et tellus in habitant viverra duis. "),
        const SizedBox(height: 10),
      ],
    );
  }
}
