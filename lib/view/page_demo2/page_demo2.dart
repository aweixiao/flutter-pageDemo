import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_demo/view/page_demo/HomePage.dart';

class PageDemo2 extends StatefulWidget {
  const PageDemo2({Key? key}) : super(key: key);

  @override
  _PageDemo2State createState() => _PageDemo2State();
}

void _goToHome_Page(BuildContext context) {
  Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
    return new Home_Page();
  }));
}

class _PageDemo2State extends State<PageDemo2> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: () => MaterialApp(
        theme: ThemeData(primaryColor: const Color.fromARGB(255, 245, 246, 250)),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            // title: Text('dierye'),
            centerTitle: true,
            elevation: 0,
            backgroundColor: const Color.fromARGB(255, 245, 246, 250),
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black26,
                    size: 30,
                  ),
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                  onPressed: () => _goToHome_Page(context),
                );
              },
            ),
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.only(left: 26,right: 26),
            alignment: Alignment.centerLeft,
            color: const Color.fromARGB(255, 245, 246, 250),
            child: ListView(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 200,
                      height: 50,
                      alignment: Alignment.centerLeft,
                      // color: Colors.amber,
                      child: Text(
                        'Flight Schedule',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      // color: Colors.blue,
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 30,
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Jakxta'),
                                  Icon(Icons.trending_flat),
                                  Text('Yegyak')
                                ],
                              ),
                            ),
                            Container(
                              height: 30,
                              alignment: Alignment.center,
                              child: Text(
                                'September (15 August 2019)',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: double.infinity,
                            height: 100,
                            margin: EdgeInsets.only(top: 10),
                            padding: EdgeInsets.only(left: 14,right: 14),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
                                borderRadius: BorderRadius.all(
                                    Radius.circular(40))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: ClipOval(
                                    child: Image.asset(
                                      "imgages/1579618273100569.jpg",
                                      width: 46,
                                      height: 46,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 140,
                                  height: 70,
                                  margin: EdgeInsets.only(left: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Ganud Indonesia'),
                                      Text('05:30-06:15'),
                                      Text('45 ManuMPminenge',style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 10
                                      ),)
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 90,
                                  height: 70,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text('￥230',style: TextStyle(
                                        color: Colors.grey
                                      ),),
                                      Text('￥200')
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 100,
                            margin: EdgeInsets.only(top: 10),
                            padding: EdgeInsets.only(left: 14,right: 14),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
                                borderRadius: BorderRadius.all(
                                    Radius.circular(40))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: ClipOval(
                                    child: Image.asset(
                                      "imgages/1579618273100569.jpg",
                                      width: 46,
                                      height: 46,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 140,
                                  height: 70,
                                  margin: EdgeInsets.only(left: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Ganud Indonesia'),
                                      Text('05:30-06:15'),
                                      Text('45 ManuMPminenge',style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10
                                      ),)
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 90,
                                  height: 70,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('￥230',style: TextStyle(
                                          color: Colors.grey
                                      ),),
                                      Text('￥200')
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 100,
                            margin: EdgeInsets.only(top: 10),
                            padding: EdgeInsets.only(left: 14,right: 14),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
                                borderRadius: BorderRadius.all(
                                    Radius.circular(40))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: ClipOval(
                                    child: Image.asset(
                                      "imgages/1579618273100569.jpg",
                                      width: 46,
                                      height: 46,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 140,
                                  height: 70,
                                  margin: EdgeInsets.only(left: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Ganud Indonesia'),
                                      Text('05:30-06:15'),
                                      Text('45 ManuMPminenge',style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10
                                      ),)
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 90,
                                  height: 70,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('￥230',style: TextStyle(
                                          color: Colors.grey
                                      ),),
                                      Text('￥200')
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 100,
                            margin: EdgeInsets.only(top: 10),
                            padding: EdgeInsets.only(left: 14,right: 14),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
                                borderRadius: BorderRadius.all(
                                    Radius.circular(40))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: ClipOval(
                                    child: Image.asset(
                                      "imgages/1579618273100569.jpg",
                                      width: 46,
                                      height: 46,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 140,
                                  height: 70,
                                  margin: EdgeInsets.only(left: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Ganud Indonesia'),
                                      Text('05:30-06:15'),
                                      Text('45 ManuMPminenge',style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10
                                      ),)
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 90,
                                  height: 70,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('￥230',style: TextStyle(
                                          color: Colors.grey
                                      ),),
                                      Text('￥200')
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 100,
                            margin: EdgeInsets.only(top: 10),
                            padding: EdgeInsets.only(left: 14,right: 14),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
                                borderRadius: BorderRadius.all(
                                    Radius.circular(40))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: ClipOval(
                                    child: Image.asset(
                                      "imgages/1579618273100569.jpg",
                                      width: 46,
                                      height: 46,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 140,
                                  height: 70,
                                  margin: EdgeInsets.only(left: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Ganud Indonesia'),
                                      Text('05:30-06:15'),
                                      Text('45 ManuMPminenge',style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10
                                      ),)
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 90,
                                  height: 70,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('￥230',style: TextStyle(
                                          color: Colors.grey
                                      ),),
                                      Text('￥200')
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 100,
                            margin: EdgeInsets.only(top: 10),
                            padding: EdgeInsets.only(left: 14,right: 14),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
                                borderRadius: BorderRadius.all(
                                    Radius.circular(40))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: ClipOval(
                                    child: Image.asset(
                                      "imgages/1579618273100569.jpg",
                                      width: 46,
                                      height: 46,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 140,
                                  height: 70,
                                  margin: EdgeInsets.only(left: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Ganud Indonesia'),
                                      Text('05:30-06:15'),
                                      Text('45 ManuMPminenge',style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10
                                      ),)
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 90,
                                  height: 70,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('￥230',style: TextStyle(
                                          color: Colors.grey
                                      ),),
                                      Text('￥200')
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 100,
                            margin: EdgeInsets.only(top: 10),
                            padding: EdgeInsets.only(left: 14,right: 14),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
                                borderRadius: BorderRadius.all(
                                    Radius.circular(40))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: ClipOval(
                                    child: Image.asset(
                                      "imgages/1579618273100569.jpg",
                                      width: 46,
                                      height: 46,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 140,
                                  height: 70,
                                  margin: EdgeInsets.only(left: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Ganud Indonesia'),
                                      Text('05:30-06:15'),
                                      Text('45 ManuMPminenge',style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10
                                      ),)
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 90,
                                  height: 70,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('￥230',style: TextStyle(
                                          color: Colors.grey
                                      ),),
                                      Text('￥200')
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}
