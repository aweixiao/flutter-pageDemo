import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: () => MaterialApp(
          theme: ThemeData(primaryColor: Color.fromARGB(255, 235, 122, 153)),
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              elevation: 0,
              backgroundColor: const Color.fromARGB(255, 235, 122, 153),
              // leading: Builder(
              //   builder: (BuildContext context) {
              //     return IconButton(
              //       icon: const Icon(
              //         Icons.format_align_justify,
              //         color: Colors.black45,
              //         size: 30,
              //       ),
              //       tooltip:
              //           MaterialLocalizations.of(context).openAppDrawerTooltip,
              //       onPressed: () {},
              //     );
              //   },
              // ),
              title: Row(
                children: <Widget>[
                  ClipOval(
                    child: Image.asset(
                      "imgages/1579618273100569.jpg",
                      width: 40,
                      height: 40,
                    ),
                  ),
                  // 搜索框
                  Container(
                      width: 200.w,
                      height: 34,
                      margin: EdgeInsets.only(left: 13.w),
                      padding: EdgeInsets.only(left: 4.w),
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              size: 26,
                              color: Colors.black45,
                            ),
                            contentPadding: EdgeInsets.only(bottom: 10),
                            // hintText: '搜索关键词',
                            border: InputBorder.none),
                      )),
                  // 右侧图标
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.phone_android,
                      size: 26.w,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    // margin: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.email_outlined,
                      size: 26.w,
                      color: Color.fromARGB(
                        255,
                        97,
                        101,
                        100,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            body: new ListView(
              children: <Widget>[Container()],
            ),
          )),
    );
  }
}
