import 'package:flutter/material.dart';
import '../Model/Post.dart';

///主体列表
class MainContentListView extends StatelessWidget {
  Widget _listItemBuilder(BuildContext content, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Container(
            child: Image.network(postsArray[index].coverImage),
            height: 260,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            postsArray[index].name,
            style: TextStyle(
              color: Colors.orange,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(postsArray[index].onlyMark)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemBuilder: _listItemBuilder,
      itemCount: postsArray.length,
    );
  }
}
