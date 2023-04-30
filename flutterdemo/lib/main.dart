import 'package:flutter/material.dart';
import 'Model/Post.dart';
import 'ContentView/DrawContentView.dart';
import 'ContentView/BottomNavigationEventBar.dart';
import 'ContentView/ListViewArray.dart';
import 'ContentView/HomeSecondPageView.dart';
import 'ContentView/HomeThreePageView.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainContentPage();
  }
}

class MainContentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "项目",
      home: ExtranContentView(),
      theme: ThemeData(
          primaryColor: Colors.orange,
          highlightColor: Color.fromRGBO(255, 255, 255, 1.0),
          splashColor: Colors.purple),
    );
  }
}

class ExtranContentView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
              // leading: IconButton(
              //   onPressed: () => debugPrint("dianji"),
              //   icon: Icon(Icons.menu),
              //   tooltip: "左边的菜单的按钮",
              // ),
              title: Text("大标题"),
              backgroundColor: Colors.yellow,
              titleTextStyle: TextStyle(
                  color: Colors.green,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
              actions: [
                IconButton(
                  onPressed: () => debugPrint("dianjfdfdfi"),
                  icon: Icon(Icons.search),
                  tooltip: "右边的搜索的按钮",
                )
              ],
              elevation: 0.0,
              bottom: TabBar(
                  unselectedLabelColor: Colors.brown,
                  indicatorColor: Colors.red,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 1.1,
                  tabs: [
                    Tab(
                      icon: Icon(Icons.folder),
                    ),
                    Tab(
                      icon: Icon(Icons.crop_original),
                    ),
                    Tab(
                      icon: Icon(Icons.card_travel),
                    )
                  ])),
          body: TabBarView(children: <Widget>[
            // Icon(
            //   Icons.folder,
            //   color: Colors.orange,
            //   size: 128,
            // ),
            //   Icon(
            //   Icons.crop_original,
            //   color: Colors.yellow,
            //   size: 128,
            // ),
            MainContentListView(),
            HomeSecondPageView(),
            HomeThreePageView()
          ]),
          drawer: DrawContentView(),
          bottomNavigationBar: BottomNavigationEventBar(),
        ));
  }
}
