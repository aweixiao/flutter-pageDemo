import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_demo/view/listOne/listOne.dart';
import 'package:page_demo/view/page_demo/HomePage.dart';

class listTwo extends StatefulWidget {
  const listTwo({Key? key}) : super(key: key);

  @override
  _listTwoState createState() => _listTwoState();
}

void _gohomepage(BuildContext context) {
  Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
    return new Home_Page();
  }));
}

class _listTwoState extends State<listTwo> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: () => MaterialApp(
        theme: ThemeData(primaryColor: const Color.fromARGB(255, 245, 246, 250)),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            shape: Border(
              bottom: BorderSide(
                  width: 1,
                  color: Colors.black12
              ),
            ),
            backgroundColor: const Color.fromARGB(255, 245, 246, 250),
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black26,
                    size: 30,
                  ),
                  tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                  onPressed: () => _gohomepage(context),
                );
              },
            ),
            actions: <Widget>[
              Row(
                children: [
                  Container(
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Icon(
                            Icons.share,
                            size: 26,
                            color: Colors.black45,
                          ),
                        ),
                        Container(
                          child: Icon(
                            Icons.notifications,
                            size: 26,
                            color: Colors.black45,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          body: shopListTwo(),
        ),
      ),
    );
  }
}

class shopListTwo extends StatefulWidget {
  const shopListTwo({Key? key}) : super(key: key);

  @override
  _shopListTwoState createState() => _shopListTwoState();
}

class _shopListTwoState extends State<shopListTwo> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
            width: 100.w,
            padding: EdgeInsets.only(left: 10.w,right: 10.w),
            child: Container(
              width: 100.w,
                height: 180.w,
                padding: EdgeInsets.only(left: 10,right: 10),
                margin: EdgeInsets.only(top: 10),
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)
                    ),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage('https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg')
                    )
                )
            ),
        ),
        Container(
          width: 100.w,
          padding: EdgeInsets.only(left: 10.w,right: 10.w),
          child: Container(
            width: 100.w,
            // color: Colors.purple,
            margin: EdgeInsets.symmetric(vertical: 16),
            height: 40,
            child: ListView(
              // 改变滑动方向
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 94.w,
                  margin: EdgeInsets.only(right: 10.w),
                  child: Center(
                    child: Text('Codts',style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                    ),),
                  ),
                  // color: Colors.lightBlue,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    //设置四周圆角 角度
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    // borderRadius: BorderRadius.only(topRight: Radius.circular(10),),
                  ),
                ),
                Container(
                  width: 94.w,
                  margin: EdgeInsets.only(right: 10.w),
                  child: Center(
                    child: Text('Codts',style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                    ),),
                  ),
                  // color: Colors.lightBlue,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    //设置四周圆角 角度
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                ),
                Container(
                  width: 94.w,
                  margin: EdgeInsets.only(right: 10.w),
                  child: Center(
                    child: Text('Codts',style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                    ),),
                  ),
                  // color: Colors.lightBlue,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    //设置四周圆角 角度
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                ),
                Container(
                  width: 94.w,
                  margin: EdgeInsets.only(right: 10.w),
                  child: Center(
                    child: Text('Codts',style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                    ),),
                  ),
                  // color: Colors.lightBlue,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    //设置四周圆角 角度
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          // color: Colors.blue,
          padding: EdgeInsets.only(left: 10,right: 10),
          child: Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      width: 165.w,
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 244, 244, 244),
                          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
                          borderRadius: BorderRadius.all(
                              Radius.circular(10))),
                      child: Column(
                        children: <Widget>[
                          Container(
                            // width: 165.h,
                            height: 120.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5)
                              ),
                              image: new DecorationImage(
                                fit: BoxFit.cover,
                                image: new NetworkImage(
                                    'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'),
                              ),
                            ),
                          ),
                          Container(
                            width: 165.w,
                            padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 5.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  // margin: EdgeInsets.only(bottom: 5.w),
                                  child: Text('Big Pony Mesh Poto',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
                                ),
                                Text('Big Pony Mesh Poto',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
                                Text('Big Pony Mesh Poto',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.black26),),
                                Text('￥95',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.yellow),),
                                Container(
                                  width: double.infinity,
                                  height: 26,
                                  // color: Colors.purple,
                                  margin: EdgeInsets.only(top: 10.w),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        width: 30,
                                        height: 30,
                                        alignment: Alignment.center,
                                        child: Icon(
                                          Icons.remove_circle,
                                          size: 26,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Container(
                                        child: Text('1'),
                                      ),
                                      Container(
                                        width: 30,
                                        height: 30,
                                        child: Icon(
                                          Icons.add_circle_rounded,
                                          size: 26,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Container(
                                        width: 30,
                                        height: 30,
                                        child: Icon(
                                          Icons.add_shopping_cart,
                                          size: 26,
                                          color: Colors.black,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 165.w,
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 244, 244, 244),
                          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
                          borderRadius: BorderRadius.all(
                              Radius.circular(10))),
                      child: Column(
                        children: <Widget>[
                          Container(
                            // width: 165.h,
                            height: 120.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5)
                              ),
                              image: new DecorationImage(
                                fit: BoxFit.cover,
                                image: new NetworkImage(
                                    'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'),
                              ),
                            ),
                          ),
                          Container(
                            width: 165.w,
                            padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 5.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  // margin: EdgeInsets.only(bottom: 5.w),
                                  child: Text('Big Pony Mesh Poto',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
                                ),
                                Text('Big Pony Mesh Poto',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
                                Text('Big Pony Mesh Poto',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.black26),),
                                Text('￥95',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.yellow),),
                                Container(
                                  width: double.infinity,
                                  height: 26,
                                  // color: Colors.purple,
                                  margin: EdgeInsets.only(top: 10.w),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        width: 30,
                                        height: 30,
                                        alignment: Alignment.center,
                                        child: Icon(
                                          Icons.remove_circle,
                                          size: 26,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Container(
                                        child: Text('1'),
                                      ),
                                      Container(
                                        width: 30,
                                        height: 30,
                                        child: Icon(
                                          Icons.add_circle_rounded,
                                          size: 26,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Container(
                                        width: 30,
                                        height: 30,
                                        child: Icon(
                                          Icons.add_shopping_cart,
                                          size: 26,
                                          color: Colors.black,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      width: 165.w,
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 244, 244, 244),
                          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
                          borderRadius: BorderRadius.all(
                              Radius.circular(10))),
                      child: Column(
                        children: <Widget>[
                          Container(
                            // width: 165.h,
                            height: 120.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5)
                              ),
                              image: new DecorationImage(
                                fit: BoxFit.cover,
                                image: new NetworkImage(
                                    'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'),
                              ),
                            ),
                          ),
                          Container(
                            width: 165.w,
                            padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 5.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  // margin: EdgeInsets.only(bottom: 5.w),
                                  child: Text('Big Pony Mesh Poto',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
                                ),
                                Text('Big Pony Mesh Poto',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
                                Text('Big Pony Mesh Poto',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.black26),),
                                Text('￥95',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.yellow),),
                                Container(
                                  width: double.infinity,
                                  height: 26,
                                  // color: Colors.purple,
                                  margin: EdgeInsets.only(top: 10.w),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        width: 30,
                                        height: 30,
                                        alignment: Alignment.center,
                                        child: Icon(
                                          Icons.remove_circle,
                                          size: 26,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Container(
                                        child: Text('1'),
                                      ),
                                      Container(
                                        width: 30,
                                        height: 30,
                                        child: Icon(
                                          Icons.add_circle_rounded,
                                          size: 26,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Container(
                                        width: 30,
                                        height: 30,
                                        child: Icon(
                                          Icons.add_shopping_cart,
                                          size: 26,
                                          color: Colors.black,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 165.w,
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 244, 244, 244),
                          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
                          borderRadius: BorderRadius.all(
                              Radius.circular(10))),
                      child: Column(
                        children: <Widget>[
                          Container(
                            // width: 165.h,
                            height: 120.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5)
                              ),
                              image: new DecorationImage(
                                fit: BoxFit.cover,
                                image: new NetworkImage(
                                    'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'),
                              ),
                            ),
                          ),
                          Container(
                            width: 165.w,
                            padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 5.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  // margin: EdgeInsets.only(bottom: 5.w),
                                  child: Text('Big Pony Mesh Poto',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
                                ),
                                Text('Big Pony Mesh Poto',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
                                Text('Big Pony Mesh Poto',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.black26),),
                                Text('￥95',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.yellow),),
                                Container(
                                  width: double.infinity,
                                  height: 26,
                                  // color: Colors.purple,
                                  margin: EdgeInsets.only(top: 10.w),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        width: 30,
                                        height: 30,
                                        alignment: Alignment.center,
                                        child: Icon(
                                          Icons.remove_circle,
                                          size: 26,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Container(
                                        child: Text('1'),
                                      ),
                                      Container(
                                        width: 30,
                                        height: 30,
                                        child: Icon(
                                          Icons.add_circle_rounded,
                                          size: 26,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Container(
                                        width: 30,
                                        height: 30,
                                        child: Icon(
                                          Icons.add_shopping_cart,
                                          size: 26,
                                          color: Colors.black,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}



