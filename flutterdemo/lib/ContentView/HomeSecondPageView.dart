import 'package:flutter/material.dart';

class HomeSecondPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Container(
        //color: Colors.green,
        width: 50,
        height: 50,
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 10),
        margin: EdgeInsets.only(right: 100),
        child: Row(
          children: [
            Container(
              child: Icon(
                Icons.offline_bolt,
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                color: Colors.grey,
                // border: Border(
                //   left: BorderSide(
                //       color: Colors.red, width: 3.0, style: BorderStyle.solid),
                //   right: BorderSide(
                //       color: Colors.green,
                //       width: 4.0,
                //       style: BorderStyle.solid),
                // ),
                border: Border.all(
                    color: Colors.green, width: 4.0, style: BorderStyle.solid),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(30),
      child: RichText(
          text: TextSpan(
        text: "Baidu",
        style: TextStyle(
            fontSize: 18,
            color: Colors.red,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w400),
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
