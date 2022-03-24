import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_demo/view/page_demo/HomePage.dart';

class myMessage extends StatefulWidget {
  const myMessage({Key? key}) : super(key: key);

  @override
  _myMessageState createState() => _myMessageState();
}

void _gohomepage(BuildContext context) {
  Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
    return new Home_Page();
  }));
}

class _myMessageState extends State<myMessage> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: ()=> MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            backgroundColor: Color.fromARGB(255, 240, 242, 246),
            appBar: AppBar(
              title: Text('PROFILE',style: TextStyle(color: Colors.black),),
              elevation: 0,
              centerTitle: true,
              backgroundColor: Colors.white,
              shape: Border(
                  bottom: BorderSide(
                      width: 1,
                      color: Colors.black12
                  )
              ),
              leading: Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    icon: const Icon(
                      Icons.brightness_2_sharp,
                      color: Colors.black26,
                      size: 30,
                    ),
                    tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                    onPressed: () => _gohomepage(context),
                  );
                },
              ),
              actions: [
                IconButton(
                  icon: const Icon(
                  Icons.power_settings_new,
                    color: Colors.black26,
                    size: 30,
                  ),
                  tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                  onPressed: () => _gohomepage(context),
                )
              ],
            ),
            body: MyMessageContent(),
          ),
        ));
  }
}

class MyMessageContent extends StatefulWidget {
  const MyMessageContent({Key? key}) : super(key: key);

  @override
  _MyMessageContentState createState() => _MyMessageContentState();
}

class _MyMessageContentState extends State<MyMessageContent> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          width: 100.w,
          height: 100.h,
          margin: EdgeInsets.only(left: 10.w,right: 10.w,top: 10),
          padding: EdgeInsets.only(left: 20.w,right: 20.w),
          decoration: BoxDecoration(
              gradient: LinearGradient(      //渐变位置
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0.4, 1.0],//[渐变起始点, 渐变结束点]
                  //渐变颜色[始点颜色, 结束颜色]
                  colors: [Color.fromARGB(255, 124, 72, 241), Color.fromARGB(255, 72, 93, 237)]
              ),
              // color: Color.fromARGB(255, 83, 93, 235),
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                           right: 10.w),
                      child: ClipOval(
                        child: Image.asset(
                          "imgages/1579618273100569.jpg",
                          width: 70.h,
                          height: 70.h,
                        ),
                      ),
                    ),
                    Container(
                      width: 150.w,
                      height: 80.h,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text('Frank Ray',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white),),
                          Text('Today is Friday and',style: TextStyle(fontSize: 14,color: Colors.black54),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 30.w,
                child: Icon(Icons.more_vert,size: 50,color: Colors.white,),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          // height: 100.h,
          margin: EdgeInsets.only(left: 10.w,right: 10.w,top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('TITLE',style: TextStyle(fontSize: 16,color: Colors.black26,fontWeight: FontWeight.w500),),
              Container(
                width: double.infinity,
                height: 50.h,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(left: 10.w,right: 10.w),
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.margin,color: Colors.black26,size: 36.sp,),
                          Container(
                            margin: EdgeInsets.only(left: 10.w),
                            child: Text('Pin code',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                          )
                        ],
                      ),
                    ),
                    Icon(Icons.chevron_right,color: Colors.black26,size: 36.sp,)
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 50.h,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(left: 10.w,right: 10.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.margin,color: Colors.black26,size: 36.sp,),
                          Container(
                            margin: EdgeInsets.only(left: 10.w),
                            child: Text('Pin code',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                          )
                        ],
                      ),
                    ),
                    Icon(Icons.chevron_right,color: Colors.black26,size: 36.sp,)
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 50.h,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(left: 10.w,right: 10.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.face,color: Colors.black26,size: 36.sp,),
                          Container(
                            margin: EdgeInsets.only(left: 10.w),
                            child: Text('Face ID',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                          )
                        ],
                      ),
                    ),
                    Icon(Icons.chevron_right,color: Colors.black26,size: 36.sp,)
                  ],
                ),
              ),

            ],
          ),
        ),
        Container(
          width: double.infinity,
          // height: 100.h,
          margin: EdgeInsets.only(left: 10.w,right: 10.w,top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('GEMRAL',style: TextStyle(fontSize: 16,color: Colors.black26,fontWeight: FontWeight.w500),),
              Container(
                width: double.infinity,
                height: 50.h,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(left: 10.w,right: 10.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.subject,color: Colors.black26,size: 36.sp,),
                          Container(
                            margin: EdgeInsets.only(left: 10.w),
                            child: Text('Language',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                          )
                        ],
                      ),
                    ),
                    Icon(Icons.chevron_right,color: Colors.black26,size: 36.sp,)
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 50.h,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(left: 10.w,right: 10.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.monetization_on,color: Colors.black26,size: 36.sp,),
                          Container(
                            margin: EdgeInsets.only(left: 10.w),
                            child: Text('Currency',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                          )
                        ],
                      ),
                    ),
                    Icon(Icons.chevron_right,color: Colors.black26,size: 36.sp,)
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 50.h,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(left: 10.w,right: 10.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.notifications_active,color: Colors.black26,size: 36.sp,),
                          Container(
                            margin: EdgeInsets.only(left: 10.w),
                            child: Text('Notification',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                          )
                        ],
                      ),
                    ),
                    Icon(Icons.chevron_right,color: Colors.black26,size: 36.sp,)
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          // height: 100.h,
          margin: EdgeInsets.only(left: 10.w,right: 10.w,top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('TITLE',style: TextStyle(fontSize: 16,color: Colors.black26,fontWeight: FontWeight.w500),),
              Container(
                width: double.infinity,
                height: 50.h,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(left: 10.w,right: 10.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.margin,color: Colors.black26,size: 36.sp,),
                          Container(
                            margin: EdgeInsets.only(left: 10.w),
                            child: Text('Pin code',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                          )
                        ],
                      ),
                    ),
                    Icon(Icons.chevron_right,color: Colors.black26,size: 36.sp,)
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 50.h,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(left: 10.w,right: 10.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.margin,color: Colors.black26,size: 36.sp,),
                          Container(
                            margin: EdgeInsets.only(left: 10.w),
                            child: Text('Pin code',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                          )
                        ],
                      ),
                    ),
                    Icon(Icons.chevron_right,color: Colors.black26,size: 36.sp,)
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 50.h,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(left: 10.w,right: 10.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.face,color: Colors.black26,size: 36.sp,),
                          Container(
                            margin: EdgeInsets.only(left: 10.w),
                            child: Text('Face ID',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                          )
                        ],
                      ),
                    ),
                    Icon(Icons.chevron_right,color: Colors.black26,size: 36.sp,)
                  ],
                ),
              ),

            ],
          ),
        ),
      ],
    );
  }
}

