import 'package:flutter/material.dart';

//侧滑部分封装
class DrawContentView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        color: Colors.white,
        padding: EdgeInsets.all(8.0),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                "小明",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              accountEmail: Text("huawei@163.com"),
              currentAccountPicture: CircleAvatar(
                child: Image.network(
                    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fblog%2F202106%2F09%2F20210609081952_51ef5.thumb.1000_0.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1681223661&t=80ff9a4e543ba6a722210d34ac8d4390"),
              ),
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fblog%2F202105%2F19%2F20210519212438_ced7e.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1681224455&t=59dfc7cfa9545df97cdcaed572f2e9d6"),
                      fit: BoxFit.cover,
                      colorFilter:
                          ColorFilter.mode(Colors.orange, BlendMode.color))),
            ),
            ListTile(
              title: Text("第一个行"),
              leading: Icon(Icons.car_crash),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("第二行"),
              leading: Icon(Icons.house),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("第三行"),
              leading: Icon(Icons.door_back_door),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ));
  }
}
