import 'package:flutter/material.dart';
import './views/pages/apps.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _selectedIndex = 0;
  bool _dragged = false;
  void setDragged(bool value) {
    setState(() {
      _dragged = value;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _pages = <Widget>[
      Apps(
        dragged: _dragged,
        setDragged: setDragged,
      ),
      Apps(
        dragged: _dragged,
        setDragged: setDragged,
      ),
      Apps(
        dragged: _dragged,
        setDragged: setDragged,
      ),
      Apps(
        dragged: _dragged,
        setDragged: setDragged,
      ),
      Apps(
        dragged: _dragged,
        setDragged: setDragged,
      ),
      Apps(
        dragged: _dragged,
        setDragged: setDragged,
      ),
      Apps(
        dragged: _dragged,
        setDragged: setDragged,
      ),
    ];
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
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
            bottomNavigationBar: !_dragged
                ? BottomNavigationBar(
                    type: BottomNavigationBarType.fixed, // set the type here
                    backgroundColor: const Color(0xFF2E2E2E),
                    selectedItemColor:
                        const Color(0xFFFFDD5E), // set the color here
                    unselectedItemColor: Colors.white,
                    currentIndex: _selectedIndex, //New
                    onTap: _onItemTapped,
                    items: const [
                      BottomNavigationBarItem(
                        icon: Icon(Icons.apps_outlined),
                        label: 'Apps',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.video_chat_outlined),
                        label: 'Qucon',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.person),
                        label: 'Profile',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.schedule_send),
                        label: 'Profile',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.person_2_rounded),
                        label: 'Profile',
                      ),
                    ],
                  )
                : null,
            body: _pages.elementAt(_selectedIndex)),
      ),
    );
  }
}
