import 'package:flutter/material.dart';

class HomeThreePageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return VerLayoutCoumPage();
  }
}

///垂直列表间距
class VerLayoutCoumPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.red),
              child: Icon(Icons.home),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          SizedBox(
            width: 50,
            height: 50,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.yellow),
              child: Icon(Icons.abc_rounded),
            ),
          )
        ],
      ),
    );
  }
}

///垂直列表
class VerLayoutRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          IconCustouBage(Icons.card_travel),
          IconCustouBage(
            Icons.holiday_village,
            iconSize: 50,
          ),
          IconCustouBage(Icons.house)
        ],
      ),
    );
  }
}

///水平列表
class HorLayoutRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconCustouBage(Icons.card_travel),
          IconCustouBage(
            Icons.holiday_village,
            iconSize: 60,
          ),
          IconCustouBage(Icons.house)
        ],
      ),
    );
  }
}

class IconCustouBage extends StatelessWidget {
  final IconData theIconView;
  final double iconSize;
  IconCustouBage(this.theIconView, {this.iconSize = 32.0});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(
        theIconView,
        size: iconSize,
        color: Colors.red,
      ),
      width: iconSize + 30,
      height: iconSize + 30,
      color: Colors.orange,
    );
  }
}
