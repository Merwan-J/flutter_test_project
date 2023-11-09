import 'package:flutter/material.dart';

class Caption extends StatefulWidget {
  bool seemore;
  String title;
  Caption({key, required this.title})
      : seemore = title.length > 150,
        super(key: key);

  @override
  State<Caption> createState() => _CaptionState();
}

class _CaptionState extends State<Caption> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
        width: MediaQuery.of(context).size.width * 0.8,
        height:
            widget.seemore ? MediaQuery.of(context).size.height * 0.15 : null,
        decoration: BoxDecoration(
          color: Color.fromARGB(141, 98, 92, 93),
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.white, width: 1.0), // Add this line
          // Add this line
          // Set your desired color here
        ),
        child: Column(children: [
          !widget.seemore && widget.title.length > 150
              ? Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          widget.seemore = !widget.seemore;
                        });
                      },
                      child: Text("See Less")),
                )
              : Container(),
          Text(
            widget.title
                .substring(0, widget.seemore ? 150 : widget.title.length),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14.0,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Oct 26, 2023",
                  style: TextStyle(
                    color: Color(0xFFE5A5A5),
                    fontSize: 10.0,
                  )),
              widget.seemore
                  ? TextButton(
                      onPressed: () {
                        setState(() {
                          widget.seemore = !widget.seemore;
                        });
                      },
                      child: Text("See More"))
                  : Container(
                      height: 0,
                    )
            ],
          )
        ]));
  }
}
