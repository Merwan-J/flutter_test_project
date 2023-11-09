import 'package:flutter/material.dart';
import 'package:flutter_test_project/views/widgets/sidebar.dart';
import 'package:flutter_test_project/views/widgets/caption.dart';
import 'package:flutter_test_project/views/widgets/popup_menu.dart';

class Apps extends StatefulWidget {
  bool dragged;
  final Function setDragged;

  final String _title =
      'The error message youre seeing is because youre trying to add a Positioned? (nullable Positioned) to a list of Widget. In Dart, you cant add a nullable type to a list of non-nullable type. The error message youre seeing is because youre trying to add a Positioned? (nullable Positioned) to a list of Widget. In Dart, you cant add a nullable';
  late bool _seemore;

  Apps({
    Key? key,
    required this.dragged,
    required this.setDragged,
  })  : _seemore =
            "The error message youre seeing is because youre trying to add a Positioned? (nullable Positioned) to a list of Widget. In Dart, you cant add a nullable type to a list of non-nullable type. The error message youre seeing is because youre trying to add a Positioned? (nullable Positioned) to a list of Widget. In Dart, you cant add a nullable"
                    .length >
                150,
        super(key: key);

  @override
  _AppsState createState() => _AppsState();
}

class _AppsState extends State<Apps> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: Image.asset(
            'assets/images/bg.png',
            fit: BoxFit.cover,
          ),
        ),
        !widget.dragged
            ? const Positioned(
                left: 10.0,
                top: 10.0,
                child: PopupMenu(),
              )
            : Container(),
        !widget.dragged
            ? const Positioned(
                bottom: 50.0,
                right: 10.0,
                child: SideBar(),
              )
            : Container(),
        Positioned(
          bottom: widget.dragged ? 50 : 5,
          right: widget.dragged ? null : 0.0,
          left: widget.dragged ? 0.0 : null,
          child: Container(
              width: 45.0,
              height: 45.0,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(82, 255, 255, 255),
                  borderRadius: widget.dragged
                      ? const BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        )
                      : const BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                        )),
              child: IconButton(
                onPressed: () {
                  widget.setDragged(!widget.dragged);
                },
                icon: Icon(
                  widget.dragged
                      ? Icons.keyboard_double_arrow_right_outlined
                      : Icons.keyboard_double_arrow_left_outlined,
                  size: 35.0,
                  color: const Color.fromARGB(255, 188, 187, 187),
                ),
              )),
        ),
        widget.dragged
            ? Container()
            : Positioned(
                bottom: 10.0,
                left: MediaQuery.of(context).size.width * 0.05,
                right: MediaQuery.of(context).size.width * 0.15,
                child: Caption(
                  title: widget._title,
                ))
      ],
    );
  }
}
