import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_demo/view/page_demo/HomePage.dart';

class myMessage2 extends StatefulWidget {
  const myMessage2({Key? key}) : super(key: key);

  @override
  _myMessage2State createState() => _myMessage2State();
}

void _gohomepage(BuildContext context) {
  Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
    return new Home_Page();
  }));
}

class _myMessage2State extends State<myMessage2> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: ()=> MaterialApp(
      debugShowCheckedModeBanner: false,
          home: Scaffold(
            backgroundColor: Color.fromARGB(255, 250, 250, 250),
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Color.fromARGB(255, 250, 250, 250),
              actions: [
                IconButton(
                  icon: const Icon(
                    Icons.ac_unit,
                    color: Color.fromARGB(255, 205, 181, 251),
                    size: 26,
                  ),
                  tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                  onPressed: () => _gohomepage(context),
                )
              ],
            ),
            body: MyMessageContent2(),
          ),
    ));
  }
}

class MyMessageContent2 extends StatefulWidget {
  const MyMessageContent2({Key? key}) : super(key: key);

  @override
  _MyMessageContent2State createState() => _MyMessageContent2State();
}

class _MyMessageContent2State extends State<MyMessageContent2> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this,length: 3);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(left: 12,right: 12),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 30.h),
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: [
                        Positioned(
                          child: ClipOval(
                            child: Image.asset(
                              "imgages/1579618273100569.jpg",
                              width: 90.h,
                              height: 90.h,
                            ),
                          ),),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              width: 30.h,
                              height: 30.h,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 198, 178, 253),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Icon(Icons.camera_alt,size: 20.h,color: Color.fromARGB(255, 168, 122, 253),),
                            ))
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: 40.h,
                      alignment: Alignment.center,
                      child: Text('Davis Gouse',style: TextStyle(fontSize: ScreenUtil().setSp(14)),),
                    ),
                    Container(
                      // width: double.infinity,
                      height: 80.h,
                      padding: EdgeInsets.only(left: 40.w,right: 40.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            // height: 40.h,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('4',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                Text('Posts',style: TextStyle(color: Colors.black26,fontSize: 14
                                ),)
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('451',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                Text('Forpwing',style: TextStyle(color: Colors.black26,fontSize: 14),)
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('257',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                Text('Forpwing',style: TextStyle(color: Colors.black26,fontSize: 14),)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 350.w,
                height: 400.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Column(
                  children: [
                    Container(
                      height: 120.h,
                      child: TabBar(
                        // 控制切换tabBar的颜色
                        labelColor: Color.fromARGB(255, 173, 130, 253),
                        unselectedLabelColor: Colors.black26,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: Color.fromARGB(255, 173, 130, 253),
                        indicatorWeight: 2.0,
                        tabs: <Widget>[
                          Text('Post',style: TextStyle(fontSize: 16,),),
                          Text('Week',style: TextStyle(fontSize: 16,),),
                          Text('Month',style: TextStyle(fontSize: 16,),),
                        ],
                        controller: _tabController,  // 记得要带上tabController
                      ),
                    ),
                    Expanded(child: TabBarView(
                      controller: _tabController,
                      children: <Widget>[
                        ListView(
                          children: [
                            Center(
                                child: Container(
                                  width: 330.w,
                                  height: 150.h,
                                  margin: EdgeInsets.only(bottom: 20),
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 246, 246, 246),
                                      borderRadius: BorderRadius.all(Radius.circular(20))
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        width: 100.h,
                                        height: 100.h,
                                        margin: EdgeInsets.only(left: 15.w),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(30)),
                                          image: new DecorationImage(
                                            fit: BoxFit.cover,
                                            image: new NetworkImage(
                                                'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 180.w,
                                        margin: EdgeInsets.only(left: 20.w),
                                        padding: EdgeInsets.only(top: 14,bottom: 10.h),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: <Widget>[
                                            Container(
                                              width:170.w,
                                              height: 40.h,
                                                child: Text('How I Hacked Into Apple, Microft and Dozons',style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500
                                                ), maxLines: 2,)
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Container(
                                                  margin: EdgeInsets.only(right: 10.w),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Icon(Icons.face,size: 20,),
                                                      Container(
                                                        margin: EdgeInsets.only(left: 5.w),
                                                        child: Text('356',style: TextStyle(fontSize: 14,color: Colors.black54),),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(right: 10.w),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Icon(Icons.face,size: 20,),
                                                      Container(
                                                        margin: EdgeInsets.only(left: 5.w),
                                                        child: Text('356',style: TextStyle(fontSize: 14,color: Colors.black54),),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(right: 10.w),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Icon(Icons.face,size: 20,),
                                                      Container(
                                                        margin: EdgeInsets.only(left: 5.w),
                                                        child: Text('356',style: TextStyle(fontSize: 14,color: Colors.black54),),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text('2021年10月9日',style: TextStyle(fontSize: 12,color: Colors.black26),),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                            ),
                            Center(
                              child: Container(
                                width: 330.w,
                                height: 150.h,
                                margin: EdgeInsets.only(bottom: 20),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 246, 246, 246),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 100.h,
                                      height: 100.h,
                                      margin: EdgeInsets.only(left: 15.w),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(30)),
                                        image: new DecorationImage(
                                          fit: BoxFit.cover,
                                          image: new NetworkImage(
                                              'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 180.w,
                                      margin: EdgeInsets.only(left: 20.w),
                                      padding: EdgeInsets.only(top: 14,bottom: 10.h),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: <Widget>[
                                          Container(
                                            width:170.w,
                                            height: 40.h,
                                            // color: Colors.orange,
                                              child: Text('How I Hacked Into Apple, Microft and Dozons',style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500
                                              ), maxLines: 2,)
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Container(
                                                margin: EdgeInsets.only(right: 10.w),
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(Icons.face,size: 20,),
                                                    Container(
                                                      margin: EdgeInsets.only(left: 5.w),
                                                      child: Text('356',style: TextStyle(fontSize: 14,color: Colors.black54),),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(right: 10.w),
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(Icons.face,size: 20,),
                                                    Container(
                                                      margin: EdgeInsets.only(left: 5.w),
                                                      child: Text('356',style: TextStyle(fontSize: 14,color: Colors.black54),),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(right: 10.w),
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(Icons.face,size: 20,),
                                                    Container(
                                                      margin: EdgeInsets.only(left: 5.w),
                                                      child: Text('356',style: TextStyle(fontSize: 14,color: Colors.black54),),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text('2021年10月9日',style: TextStyle(fontSize: 12,color: Colors.black26),),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        ListView(
                          children: [
                            Center(
                              child: Container(
                                width: 330.w,
                                height: 150.h,
                                margin: EdgeInsets.only(bottom: 20),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 246, 246, 246),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 100.h,
                                      height: 100.h,
                                      margin: EdgeInsets.only(left: 15.w),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(30)),
                                        image: new DecorationImage(
                                          fit: BoxFit.cover,
                                          image: new NetworkImage(
                                              'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 180.w,
                                      margin: EdgeInsets.only(left: 20.w),
                                      padding: EdgeInsets.only(top: 14,bottom: 10.h),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: <Widget>[
                                          Container(
                                            width:170.w,
                                            height: 40.h,
                                            // color: Colors.orange,
                                              child: Text('How I Hacked Into Apple, Microft and Dozons',style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500
                                              ), maxLines: 2,)
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Container(
                                                margin: EdgeInsets.only(right: 10.w),
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(Icons.face,size: 20,),
                                                    Container(
                                                      margin: EdgeInsets.only(left: 5.w),
                                                      child: Text('356',style: TextStyle(fontSize: 14,color: Colors.black54),),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(right: 10.w),
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(Icons.face,size: 20,),
                                                    Container(
                                                      margin: EdgeInsets.only(left: 5.w),
                                                      child: Text('356',style: TextStyle(fontSize: 14,color: Colors.black54),),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(right: 10.w),
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(Icons.face,size: 20,),
                                                    Container(
                                                      margin: EdgeInsets.only(left: 5.w),
                                                      child: Text('356',style: TextStyle(fontSize: 14,color: Colors.black54),),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text('2021年10月9日',style: TextStyle(fontSize: 12,color: Colors.black26),),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                width: 330.w,
                                height: 150.h,
                                margin: EdgeInsets.only(bottom: 20),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 246, 246, 246),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 100.h,
                                      height: 100.h,
                                      margin: EdgeInsets.only(left: 15.w),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(30)),
                                        image: new DecorationImage(
                                          fit: BoxFit.cover,
                                          image: new NetworkImage(
                                              'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 180.w,
                                      margin: EdgeInsets.only(left: 20.w),
                                      padding: EdgeInsets.only(top: 14,bottom: 10.h),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: <Widget>[
                                          Container(
                                            width:170.w,
                                            height: 40.h,
                                              child: Text('How I Hacked Into Apple, Microft and Dozons',style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500
                                              ), maxLines: 2,)
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Container(
                                                margin: EdgeInsets.only(right: 10.w),
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(Icons.face,size: 20,),
                                                    Container(
                                                      margin: EdgeInsets.only(left: 5.w),
                                                      child: Text('356',style: TextStyle(fontSize: 14,color: Colors.black54),),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(right: 10.w),
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(Icons.face,size: 20,),
                                                    Container(
                                                      margin: EdgeInsets.only(left: 5.w),
                                                      child: Text('356',style: TextStyle(fontSize: 14,color: Colors.black54),),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(right: 10.w),
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(Icons.face,size: 20,),
                                                    Container(
                                                      margin: EdgeInsets.only(left: 5.w),
                                                      child: Text('356',style: TextStyle(fontSize: 14,color: Colors.black54),),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text('2021年10月9日',style: TextStyle(fontSize: 12,color: Colors.black26),),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        ListView(
                          children: [
                            Center(
                              child: Container(
                                width: 330.w,
                                height: 150.h,
                                margin: EdgeInsets.only(bottom: 20),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 246, 246, 246),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 100.h,
                                      height: 100.h,
                                      margin: EdgeInsets.only(left: 15.w),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(30)),
                                        image: new DecorationImage(
                                          fit: BoxFit.cover,
                                          image: new NetworkImage(
                                              'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 180.w,
                                      margin: EdgeInsets.only(left: 20.w),
                                      padding: EdgeInsets.only(top: 14,bottom: 10.h),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: <Widget>[
                                          Container(
                                            width:170.w,
                                            height: 40.h,
                                            // color: Colors.orange,
                                              child: Text('How I Hacked Into Apple, Microft and Dozons',style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500
                                              ), maxLines: 2,)
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Container(
                                                margin: EdgeInsets.only(right: 10.w),
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(Icons.face,size: 20,),
                                                    Container(
                                                      margin: EdgeInsets.only(left: 5.w),
                                                      child: Text('356',style: TextStyle(fontSize: 14,color: Colors.black54),),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(right: 10.w),
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(Icons.face,size: 20,),
                                                    Container(
                                                      margin: EdgeInsets.only(left: 5.w),
                                                      child: Text('356',style: TextStyle(fontSize: 14,color: Colors.black54),),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(right: 10.w),
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(Icons.face,size: 20,),
                                                    Container(
                                                      margin: EdgeInsets.only(left: 5.w),
                                                      child: Text('356',style: TextStyle(fontSize: 14,color: Colors.black54),),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text('2021年10月9日',style: TextStyle(fontSize: 12,color: Colors.black26),),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                width: 330.w,
                                height: 150.h,
                                margin: EdgeInsets.only(bottom: 20),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 246, 246, 246),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 100.h,
                                      height: 100.h,
                                      margin: EdgeInsets.only(left: 15.w),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(30)),
                                        image: new DecorationImage(
                                          fit: BoxFit.cover,
                                          image: new NetworkImage(
                                              'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 180.w,
                                      margin: EdgeInsets.only(left: 20.w),
                                      padding: EdgeInsets.only(top: 14,bottom: 10.h),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: <Widget>[
                                          Container(
                                            width:170.w,
                                            height: 40.h,
                                              child: Text('How I Hacked Into Apple, Microft and Dozons',style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500
                                              ), maxLines: 2,)
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Container(
                                                margin: EdgeInsets.only(right: 10.w),
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(Icons.face,size: 20,),
                                                    Container(
                                                      margin: EdgeInsets.only(left: 5.w),
                                                      child: Text('356',style: TextStyle(fontSize: 14,color: Colors.black54),),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(right: 10.w),
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(Icons.face,size: 20,),
                                                    Container(
                                                      margin: EdgeInsets.only(left: 5.w),
                                                      child: Text('356',style: TextStyle(fontSize: 14,color: Colors.black54),),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(right: 10.w),
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(Icons.face,size: 20,),
                                                    Container(
                                                      margin: EdgeInsets.only(left: 5.w),
                                                      child: Text('356',style: TextStyle(fontSize: 14,color: Colors.black54),),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text('2021年10月9日',style: TextStyle(fontSize: 12,color: Colors.black26),),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),)
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

