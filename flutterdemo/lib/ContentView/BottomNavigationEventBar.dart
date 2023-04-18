import 'package:flutter/material.dart';

class BottomNavigationEventBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BottomCustomNavigationSonBar();
  }
}

class BottomCustomNavigationSonBar extends State<BottomNavigationEventBar> {
  int _bottomCurrentIndex = 0;
  void _buttonSelectIndexEvent(int index) {
    setState(() {
      _bottomCurrentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: _buttonSelectIndexEvent,
        currentIndex: _bottomCurrentIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "explore"),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: "history"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "list"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Mine")
        ]);
  }
}
