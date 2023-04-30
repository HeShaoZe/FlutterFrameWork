import 'package:flutter/material.dart';

class HomeSecondPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://img0.baidu.com/it/u=838014142,1152634226&fm=253&fmt=auto&app=138&f=JPEG?w=467&h=682"),
            alignment: Alignment.topLeft,
            repeat: ImageRepeat.repeatX,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.brown, BlendMode.hardLight)),
      ),
      alignment: Alignment.center,
      child: Container(
        color: Colors.green,
        width: 300,
        height: 300,
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 10),
        margin: EdgeInsets.only(right: 100),
        child: Row(
          children: [
            Container(
              width: 200,
              height: 200,
              child: Icon(
                Icons.offline_bolt,
                color: Colors.yellow,
              ),
              decoration: BoxDecoration(
                  color: Colors.grey,
                  // border: Border(
                  //   left: BorderSide(
                  //       color: Colors.red, width: 3.0, style: BorderStyle.solid),
                  //   right: BorderSide(
                  //       color: Colors.green,
                  //       //borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5),),

                  //       width: 4.0,
                  //       style: BorderStyle.solid),
                  // ),
                  border: Border.all(
                      color: Colors.green,
                      width: 300.0,
                      style: BorderStyle.solid),
                  boxShadow: [
                    const BoxShadow(
                        offset: Offset(8, 8),
                        color: Colors.red,
                        blurRadius: 1.5,
                        spreadRadius: 0)
                  ],
                  shape: BoxShape.circle,
                  // gradient:
                  //     RadialGradient(colors: [Colors.yellow, Colors.purple]),
                  gradient: LinearGradient(
                      colors: [Colors.red, Colors.yellow],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
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
