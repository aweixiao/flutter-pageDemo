import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_demo/view/listFour/listFour.dart';
import 'package:page_demo/view/listOne/listOne.dart';
import 'package:page_demo/view/listThree/listThree.dart';
import 'package:page_demo/view/listTwo/listTwo.dart';
import 'package:page_demo/view/myMessage/myMessage.dart';
import 'package:page_demo/view/myMessage2/myMessage2.dart';
import 'package:page_demo/view/page_demo2/page_demo2.dart';

void main() {
  runApp(Home_Page());
}

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  _Home_PageState createState() => _Home_PageState();
}

void _goToPageDemo2(BuildContext context) {
  Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
    return new PageDemo2();
  }));
}

void _goToListOne(BuildContext context) {
  Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
    return new listOne();
  }));
}

void _goToListTwo(BuildContext context) {
  Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
    return new listTwo();
  }));
}

void _goToListThree(BuildContext context) {
  Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
    return new ListThree();
  }));
}

void _goToMyMessage(BuildContext context) {
  Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
    return new myMessage();
  }));
}

void _goToMyMessage2(BuildContext context) {
  Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
    return new myMessage2();
  }));
}

void _goToListFour(BuildContext context) {
  Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
    return new ListFour();
  }));
}

class _Home_PageState extends State<Home_Page>
    with SingleTickerProviderStateMixin {
  var _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 4, vsync: this);
  }

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
                backgroundColor: const Color.fromARGB(255, 11, 105, 251),
                leading: Builder(
                  builder: (BuildContext context) {
                    return IconButton(
                      icon: const Icon(
                        Icons.format_align_justify,
                        color: Colors.white,
                        size: 30,
                      ),
                      tooltip: MaterialLocalizations.of(context)
                          .openAppDrawerTooltip,
                      onPressed: () {},
                    );
                  },
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('NOTIFICATION'),
                    Container(
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            // margin: EdgeInsets.only(left: 20),
                            child: Icon(
                              Icons.share,
                              size: 26,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            // margin: EdgeInsets.only(left: 20),
                            child: Icon(
                              Icons.notifications,
                              size: 26,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            // margin: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.local_grocery_store,
                              size: 26,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              body: Column(
                children: [
                  Container(
                    child: // 搜索栏
                        Container(
                      width: double.infinity,
                      height: 50,
                      color: Color.fromARGB(255, 11, 105, 251),
                      alignment: Alignment.center,
                      child: Container(
                          width: 300.w,
                          height: 34,
                          margin: EdgeInsets.only(left: 13.w),
                          padding: EdgeInsets.only(left: 4.w),
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: TextField(
                            decoration: InputDecoration(
                                // 搜索框左侧图标
                                prefixIcon: Icon(
                                  Icons.search,
                                  size: 26,
                                  color: Colors.black45,
                                ),
                                contentPadding: EdgeInsets.only(bottom: 12),
                                hintText: '搜索关键词',
                                border: InputBorder.none,
                                // 搜索框右侧图标
                                suffixIcon: IconButton(
                                  icon: Icon(Icons.mic),
                                  color: Colors.black45,
                                  onPressed: () {},
                                )),
                          )),
                    ),
                  ),
                  Container(
                    height: 53,
                    child: TabBar(
                      tabs: <Widget>[
                        Text('Today'),
                        Text('Week'),
                        Text('Month'),
                        Text('Year'),
                      ],
                      controller: _controller,
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: <Widget>[
                        ListView(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              height: 36,
                              alignment: Alignment.centerLeft,
                              child: Text('Today,25Feb,thursday'),
                            ),
                            Column(
                              children: [
                                InkWell(
                                  child: Container(
                                    padding: EdgeInsets.only(left: 10),
                                    height: 90.h,
                                    margin: EdgeInsets.only(bottom: 15),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 10,
                                          decoration: BoxDecoration(
                                              color: Colors.amber,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                        ),
                                        Container(
                                          width: 330.w,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey,
                                                    blurRadius: 5)
                                              ],
                                              color: Color.fromARGB(
                                                  255, 250, 250, 250),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 10.w,),
                                                child: ClipOval(
                                                  child: Image.asset(
                                                    "imgages/1579618273100569.jpg",
                                                    width: 60.h,
                                                    height: 60.h,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(right: 60.w),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Text(
                                                      'Nen project launch',
                                                      style: TextStyle(
                                                          fontSize: 16.sp,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                    Text(
                                                      '10 Oct 2021 * 10.30AM',
                                                      style: TextStyle(
                                                          fontSize: 14.sp),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  onTap: () => _goToPageDemo2(context),
                                ),
                                InkWell(
                                  child: Container(
                                    padding: EdgeInsets.only(left: 10),
                                    height: 90.h,
                                    margin: EdgeInsets.only(bottom: 15),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 10,
                                          decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 46, 123, 243),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                        ),
                                        Container(
                                          width: 330.w,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey,
                                                    blurRadius: 5)
                                              ],
                                              color: Color.fromARGB(
                                                  255, 250, 250, 250),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 10.w,),
                                                child: ClipOval(
                                                  child: Image.asset(
                                                    "imgages/1579618273100569.jpg",
                                                    width: 60.h,
                                                    height: 60.h,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(right: 60.w),
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceAround,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Nen project launch',
                                                      style: TextStyle(
                                                          fontSize: 16.sp,
                                                          fontWeight:
                                                          FontWeight.w600),
                                                    ),
                                                    Text(
                                                      '10 Oct 2021 * 10.30AM',
                                                      style:
                                                      TextStyle(fontSize: 14.sp),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  onTap: () => _goToListOne(context),
                                ),
                                InkWell(
                                  child: Container(
                                    padding: EdgeInsets.only(left: 10),
                                    height: 90.h,
                                    margin: EdgeInsets.only(bottom: 15),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 10,
                                          decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 218, 54, 38),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                        ),
                                        Container(
                                          width: 330.w,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey,
                                                    blurRadius: 5)
                                              ],
                                              color: Color.fromARGB(
                                                  255, 250, 250, 250),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 10.w),
                                                child: ClipOval(
                                                  child: Image.asset(
                                                    "imgages/1579618273100569.jpg",
                                                    width: 60.h,
                                                    height: 60.h,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(right: 60.w),
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceAround,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Nen project launch',
                                                      style: TextStyle(
                                                          fontSize: 16.sp,
                                                          fontWeight:
                                                          FontWeight.w600),
                                                    ),
                                                    Text(
                                                      '10 Oct 2021 * 10.30AM',
                                                      style:
                                                      TextStyle(fontSize: 14.sp),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  onTap: () => _goToListTwo(context),
                                ),
                                InkWell(
                                  child: Container(
                                    padding: EdgeInsets.only(left: 10),
                                    height: 90.h,
                                    margin: EdgeInsets.only(bottom: 15),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 10,
                                          decoration: BoxDecoration(
                                              color:
                                              Color.fromARGB(255, 4, 151, 76),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                        ),
                                        Container(
                                          width: 330.w,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey,
                                                    blurRadius: 5)
                                              ],
                                              color: Color.fromARGB(
                                                  255, 250, 250, 250),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 10.w),
                                                child: ClipOval(
                                                  child: Image.asset(
                                                    "imgages/1579618273100569.jpg",
                                                    width: 60.h,
                                                    height: 60.h,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(right: 60.w),
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceAround,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Nen project launch',
                                                      style: TextStyle(
                                                          fontSize: 16.sp,
                                                          fontWeight:
                                                          FontWeight.w600),
                                                    ),
                                                    Text(
                                                      '10 Oct 2021 * 10.30AM',
                                                      style:
                                                      TextStyle(fontSize: 14.sp),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  onTap: ()=> _goToListThree(context),
                                ),
                                InkWell(
                                  child: Container(
                                    padding: EdgeInsets.only(left: 10),
                                    height: 90.h,
                                    margin: EdgeInsets.only(bottom: 15),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 10,
                                          decoration: BoxDecoration(
                                              color: Colors.amber,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                        ),
                                        Container(
                                          width: 330.w,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey,
                                                    blurRadius: 5)
                                              ],
                                              color: Color.fromARGB(
                                                  255, 250, 250, 250),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 10.w),
                                                child: ClipOval(
                                                  child: Image.asset(
                                                    "imgages/1579618273100569.jpg",
                                                    width: 60.h,
                                                    height: 60.h,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(right: 60.w),
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceAround,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Nen project launch',
                                                      style: TextStyle(
                                                          fontSize: 16.sp,
                                                          fontWeight:
                                                          FontWeight.w600),
                                                    ),
                                                    Text(
                                                      '10 Oct 2021 * 10.30AM',
                                                      style:
                                                      TextStyle(fontSize: 14.sp),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  onTap: ()=> _goToMyMessage(context),
                                ),

                                InkWell(
                                  child: Container(
                                    padding: EdgeInsets.only(left: 10),
                                    height: 90.h,
                                    margin: EdgeInsets.only(bottom: 15),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 10,
                                          decoration: BoxDecoration(
                                              color: Colors.amber,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                        ),
                                        Container(
                                          width: 330.w,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey,
                                                    blurRadius: 5)
                                              ],
                                              color: Color.fromARGB(
                                                  255, 250, 250, 250),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 10.w),
                                                child: ClipOval(
                                                  child: Image.asset(
                                                    "imgages/1579618273100569.jpg",
                                                    width: 60.h,
                                                    height: 60.h,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(right: 60.w),
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceAround,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Nen project launch',
                                                      style: TextStyle(
                                                          fontSize: 16.sp,
                                                          fontWeight:
                                                          FontWeight.w600),
                                                    ),
                                                    Text(
                                                      '10 Oct 2021 * 10.30AM',
                                                      style: TextStyle(
                                                          fontSize: 14.sp),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  onTap: () => _goToMyMessage2(context),
                                ),
                                InkWell(
                                  child: Container(
                                    padding: EdgeInsets.only(left: 10),
                                    height: 90.h,
                                    margin: EdgeInsets.only(bottom: 15),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 10,
                                          decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 46, 123, 243),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                        ),
                                        Container(
                                          width: 330.w,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey,
                                                    blurRadius: 5)
                                              ],
                                              color: Color.fromARGB(
                                                  255, 250, 250, 250),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 10.w),
                                                child: ClipOval(
                                                  child: Image.asset(
                                                    "imgages/1579618273100569.jpg",
                                                    width: 60.h,
                                                    height: 60.h,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(right: 60.w),
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceAround,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Nen project launch',
                                                      style: TextStyle(
                                                          fontSize: 16.sp,
                                                          fontWeight:
                                                          FontWeight.w600),
                                                    ),
                                                    Text(
                                                      '10 Oct 2021 * 10.30AM',
                                                      style:
                                                      TextStyle(fontSize: 14.sp),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  onTap: () => _goToListFour(context),
                                ),

                                InkWell(
                                  child: Container(
                                    padding: EdgeInsets.only(left: 10),
                                    height: 90.h,
                                    margin: EdgeInsets.only(bottom: 15),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 10,
                                          decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 218, 54, 38),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                        ),
                                        Container(
                                          width: 330.w,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey,
                                                    blurRadius: 5)
                                              ],
                                              color: Color.fromARGB(
                                                  255, 250, 250, 250),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 10.w),
                                                child: ClipOval(
                                                  child: Image.asset(
                                                    "imgages/1579618273100569.jpg",
                                                    width: 60.h,
                                                    height: 60.h,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(right: 60.w),
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceAround,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Nen project launch',
                                                      style: TextStyle(
                                                          fontSize: 16.sp,
                                                          fontWeight:
                                                          FontWeight.w600),
                                                    ),
                                                    Text(
                                                      '10 Oct 2021 * 10.30AM',
                                                      style:
                                                      TextStyle(fontSize: 14.sp),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // onTap: () => _goToListTwo(context),
                                ),
                                InkWell(
                                  child: Container(
                                    padding: EdgeInsets.only(left: 10),
                                    height: 90.h,
                                    margin: EdgeInsets.only(bottom: 15),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 10,
                                          decoration: BoxDecoration(
                                              color:
                                              Color.fromARGB(255, 4, 151, 76),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                        ),
                                        Container(
                                          width: 330.w,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey,
                                                    blurRadius: 5)
                                              ],
                                              color: Color.fromARGB(
                                                  255, 250, 250, 250),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 10, right: 20),
                                                child: ClipOval(
                                                  child: Image.asset(
                                                    "imgages/1579618273100569.jpg",
                                                    width: 60.h,
                                                    height: 60.h,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(right: 60.w),
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceAround,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Nen project launch',
                                                      style: TextStyle(
                                                          fontSize: 16.sp,
                                                          fontWeight:
                                                          FontWeight.w600),
                                                    ),
                                                    Text(
                                                      '10 Oct 2021 * 10.30AM',
                                                      style:
                                                      TextStyle(fontSize: 14.sp),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // onTap: ()=> _goToListThree(context),
                                ),
                                InkWell(
                                  child: Container(
                                    padding: EdgeInsets.only(left: 10),
                                    height: 90.h,
                                    margin: EdgeInsets.only(bottom: 15),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 10,
                                          decoration: BoxDecoration(
                                              color: Colors.amber,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                        ),
                                        Container(
                                          width: 330.w,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey,
                                                    blurRadius: 5)
                                              ],
                                              color: Color.fromARGB(
                                                  255, 250, 250, 250),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 10.w),
                                                child: ClipOval(
                                                  child: Image.asset(
                                                    "imgages/1579618273100569.jpg",
                                                    width: 60.h,
                                                    height: 60.h,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(right: 60.w),
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceAround,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Nen project launch',
                                                      style: TextStyle(
                                                          fontSize: 16.sp,
                                                          fontWeight:
                                                          FontWeight.w600),
                                                    ),
                                                    Text(
                                                      '10 Oct 2021 * 10.30AM',
                                                      style:
                                                      TextStyle(fontSize: 14.sp),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // onTap: ()=> _goToMyMessage(context),
                                ),
                              ],
                            )
                          ],
                        ),
                        ListView(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              height: 36,
                              alignment: Alignment.centerLeft,
                              child: Text('Today,25Feb,thursday'),
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 10),
                                  height: 90.h,
                                  margin: EdgeInsets.only(bottom: 15),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 10,
                                        decoration: BoxDecoration(
                                            color: Colors.amber,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                      ),
                                      Container(
                                        width: 330.w,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey,
                                                  blurRadius: 5)
                                            ],
                                            color: Color.fromARGB(
                                                255, 250, 250, 250),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: 10.w),
                                              child: ClipOval(
                                                child: Image.asset(
                                                  "imgages/1579618273100569.jpg",
                                                  width: 60.h,
                                                  height: 60.h,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(right: 60.w),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Nen project launch',
                                                    style: TextStyle(
                                                        fontSize: 16.sp,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  Text(
                                                    '10 Oct 2021 * 10.30AM',
                                                    style:
                                                        TextStyle(fontSize: 14.sp),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                child: Text('Today'),
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 30,
                                    color: Colors.amber,
                                  ),
                                  Container(
                                    width: 100,
                                    height: 30,
                                    color: Colors.amber,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                child: Text('Today'),
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 30,
                                    color: Colors.amber,
                                  ),
                                  Container(
                                    width: 100,
                                    height: 30,
                                    color: Colors.amber,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                      controller: _controller,
                    ),
                  )
                ],
              ))),
    );
  }
}
