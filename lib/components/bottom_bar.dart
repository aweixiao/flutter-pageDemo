import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MainActivityBootom extends StatefulWidget {
  ValueChanged onTableCallBack;
  // ignore: prefer_typing_uninitialized_variables
  var selectedIndex;
  MainActivityBootom(this.onTableCallBack, selectedIndex, {Key? key})
      : super(key: key);

  @override
  _MainActivityBootomState createState() => _MainActivityBootomState();
}

class _MainActivityBootomState extends State<MainActivityBootom> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        InkWell(
          child: Column(children: <Widget>[
            Icon(
              Icons.account_balance,
              color: selectedIndex == 0
                  ? const Color.fromARGB(255, 11, 105, 251)
                  : const Color.fromARGB(255, 104, 104, 104),
            ),
            Text(
              '首页',
              style: TextStyle(
                color: selectedIndex == 0
                    ? const Color.fromARGB(255, 11, 105, 251)
                    : const Color.fromARGB(255, 104, 104, 104),
              ),
            )
          ]),
          onTap: () {
            selectedIndex = 0;
            widget.onTableCallBack(0);
            setState(() {});
          },
        ),
        InkWell(
          child: Column(children: <Widget>[
            Icon(
              Icons.live_tv,
              color: selectedIndex == 1
                  ? Color.fromARGB(255, 11, 105, 251)
                  : Color.fromARGB(255, 104, 104, 104),
            ),
            Text(
              '频道',
              style: TextStyle(
                color: selectedIndex == 1
                    ? Color.fromARGB(255, 11, 105, 251)
                    : Color.fromARGB(255, 104, 104, 104),
              ),
            )
          ]),
          onTap: () {
            selectedIndex = 1;
            widget.onTableCallBack(1);
            setState(() {});
          },
        ),
        InkWell(
          child: Column(children: <Widget>[
            Icon(
              Icons.shopping_bag_outlined,
              color: selectedIndex == 2
                  ? Color.fromARGB(255, 11, 105, 251)
                  : Color.fromARGB(255, 104, 104, 104),
            ),
            Text(
              '购物车',
              style: TextStyle(
                color: selectedIndex == 2
                    ? Color.fromARGB(255, 11, 105, 251)
                    : Color.fromARGB(255, 104, 104, 104),
              ),
            )
          ]),
          onTap: () {
            selectedIndex = 2;
            widget.onTableCallBack(2);
            setState(() {});
          },
        ),
        InkWell(
          child: Column(children: <Widget>[
            Icon(
              Icons.account_circle,
              color: selectedIndex == 3
                  ? Color.fromARGB(255, 11, 105, 251)
                  : Color.fromARGB(255, 104, 104, 104),
            ),
            Text(
              '我的',
              style: TextStyle(
                color: selectedIndex == 3
                    ? Color.fromARGB(255, 11, 105, 251)
                    : Color.fromARGB(255, 104, 104, 104),
              ),
            )
          ]),
          onTap: () {
            selectedIndex = 3;
            widget.onTableCallBack(3);
            setState(() {});
          },
        )
      ],
    );
  }
}
