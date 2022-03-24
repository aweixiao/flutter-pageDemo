import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_demo/view/bottom_nav/cart_page.dart';
// import 'package:page_demo/view/bottom_nav/home_page.dart';
import 'package:page_demo/view/bottom_nav/msg_page.dart';
import 'package:page_demo/view/bottom_nav/person_page.dart';
import 'package:page_demo/view/page_demo/HomePage.dart';

import 'components/bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: ScreenUtilInit(
          designSize: Size(360, 690),
          builder: () => MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                primaryColor: Color.fromARGB(255, 11, 105, 251),
                textTheme: TextTheme(button: TextStyle(fontSize: 45.sp))),
            home: navbar(),
          ),
        ),
        // 点输入框外的区域隐藏输入法
        behavior: HitTestBehavior.opaque,
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()));
  }
}

class navbar extends StatefulWidget {
  const navbar({Key? key}) : super(key: key);

  @override
  _navbarState createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  var fragmentPagerList = <Widget>[];
  var selectedIndex;

  var selsectedIndex = 0;
  @override
  // 需要跳转的页面
  void initState() {
    fragmentPagerList.add(Home_Page());
    fragmentPagerList.add(PersonPage());
    fragmentPagerList.add(CartPage());
    fragmentPagerList.add(MsgPage());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double scrrenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(0),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height - 56,
            child: fragmentPagerList[selsectedIndex],
          )
        ],
      ),
      bottomSheet: Container(
        padding: EdgeInsets.only(top: 7),
        width: scrrenWidth,
        height: 56,
        color: Colors.white,
        child: MainActivityBootom(selected, selectedIndex),
      ),
    );
  }

  // 接收
  Function selected(var index) {
    selsectedIndex = index;
    setState(() {});
    // print(index);
    return selected;
  }
}
