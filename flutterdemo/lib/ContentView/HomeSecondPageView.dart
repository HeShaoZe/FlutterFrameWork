import 'package:flutter/material.dart';

class HomeSecondPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(30),
      child: RichText(
          text: TextSpan(
        text: "Baidu",
        style: TextStyle(
            fontSize: 18, color: Colors.red, fontStyle: FontStyle.italic),
        children: [
          TextSpan(
            text: ".com",
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      )),
    );
  }
}

class BaseTextView extends StatelessWidget {
  final TextStyle myStyle = TextStyle(
    fontSize: 24,
  );

  final String bigTitle = "你好大标题";
  final String peopleName = "人名字";
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(30),
      child: Text(
        "$bigTitle Holle Second Page! $peopleName You can do anything this here! You can do anything this here!You can do anything this here!",
        style: TextStyle(fontSize: 24),
        textAlign: TextAlign.left,
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
