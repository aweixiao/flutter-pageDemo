import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_demo/view/page_demo/HomePage.dart';


class listOne extends StatefulWidget {
  const listOne({Key? key}) : super(key: key);

  @override
  _listOneState createState() => _listOneState();
}

void _goToHome_Page(BuildContext context) {
  Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
    return new Home_Page();
  }));
}

class _listOneState extends State<listOne> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
        builder: ()=> MaterialApp(
        theme: ThemeData(primaryColor: const Color.fromARGB(255, 245, 246, 250)),
        debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
              title:  Text('Fashion',style: TextStyle(color: Colors.black
               ),),
              centerTitle: true,
              elevation: 0,
              backgroundColor: const Color.fromARGB(255, 245, 246, 250),
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
                      Icons.arrow_back,
                      color: Colors.black26,
                      size: 30,
                    ),
                    tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                    onPressed: () => _goToHome_Page(context),
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
            body: shopList(),
          ),
    ));
  }
}

class shopList extends StatefulWidget {
  const shopList({Key? key}) : super(key: key);

  @override
  _shopListState createState() => _shopListState();
}

class _shopListState extends State<shopList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(left: 10,right: 10),
      children: [
        Container(
          width: 100,
          height: 130,
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.only(left: 10,right: 10),
          decoration: new BoxDecoration(
            color: Colors.black12,
            //设置四周圆角 角度
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      width: 80,
                      height: 110,
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
                  Container(
                    width: 200,
                    height: double.infinity,
                    // color: Colors.yellow,
                    margin: EdgeInsets.only(left: 10),
                    padding: EdgeInsets.only(top: 10,bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text('国庆假期黄金周',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                        Text('国庆一日游 ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                        Text('特价 走过路过不要错过',style: TextStyle(fontSize: 12,color: Colors.black26),),
                        Text('￥81',style: TextStyle(fontSize: 14,color: Colors.yellow),),
                        Text('今天是周日',style: TextStyle(fontSize: 10,color: Colors.black26),),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: 40,height: double.infinity,
                child: IconButton(
                  icon: const Icon(
                    Icons.more_horiz,
                    color: Colors.black26,
                    size: 30,
                  ),
                  tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                  onPressed: () => _goToHome_Page(context),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 100,
          height: 130,
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.only(left: 10,right: 10),
          decoration: new BoxDecoration(
            color: Colors.black12,
            //设置四周圆角 角度
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      width: 80,
                      height: 110,
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
                  Container(
                    width: 200,
                    height: double.infinity,
                    // color: Colors.yellow,
                    margin: EdgeInsets.only(left: 10),
                    padding: EdgeInsets.only(top: 10,bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text('国庆假期黄金周',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                        Text('国庆一日游 ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                        Text('特价 走过路过不要错过',style: TextStyle(fontSize: 12,color: Colors.black26),),
                        Text('￥81',style: TextStyle(fontSize: 14,color: Colors.yellow),),
                        Text('今天是周日',style: TextStyle(fontSize: 10,color: Colors.black26),),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: 40,height: double.infinity,
                child: IconButton(
                  icon: const Icon(
                    Icons.more_horiz,
                    color: Colors.black26,
                    size: 30,
                  ),
                  tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                  onPressed: () => _goToHome_Page(context),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 100,
          height: 130,
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.only(left: 10,right: 10),
          decoration: new BoxDecoration(
            color: Colors.black12,
            //设置四周圆角 角度
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      width: 80,
                      height: 110,
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
                  Container(
                    width: 200,
                    height: double.infinity,
                    // color: Colors.yellow,
                    margin: EdgeInsets.only(left: 10),
                    padding: EdgeInsets.only(top: 10,bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text('国庆假期黄金周',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                        Text('国庆一日游 ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                        Text('特价 走过路过不要错过',style: TextStyle(fontSize: 12,color: Colors.black26),),
                        Text('￥81',style: TextStyle(fontSize: 14,color: Colors.yellow),),
                        Text('今天是周日',style: TextStyle(fontSize: 10,color: Colors.black26),),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: 40,height: double.infinity,
                child: IconButton(
                  icon: const Icon(
                    Icons.more_horiz,
                    color: Colors.black26,
                    size: 30,
                  ),
                  tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                  onPressed: () => _goToHome_Page(context),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 100,
          height: 130,
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.only(left: 10,right: 10),
          decoration: new BoxDecoration(
            color: Colors.black12,
            //设置四周圆角 角度
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      width: 80,
                      height: 110,
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
                  Container(
                    width: 200,
                    height: double.infinity,
                    // color: Colors.yellow,
                    margin: EdgeInsets.only(left: 10),
                    padding: EdgeInsets.only(top: 10,bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text('国庆假期黄金周',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                        Text('国庆一日游 ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                        Text('特价 走过路过不要错过',style: TextStyle(fontSize: 12,color: Colors.black26),),
                        Text('￥81',style: TextStyle(fontSize: 14,color: Colors.yellow),),
                        Text('今天是周日',style: TextStyle(fontSize: 10,color: Colors.black26),),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: 40,height: double.infinity,
                child: IconButton(
                  icon: const Icon(
                    Icons.more_horiz,
                    color: Colors.black26,
                    size: 30,
                  ),
                  tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                  onPressed: () => _goToHome_Page(context),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 100,
          height: 130,
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.only(left: 10,right: 10),
          decoration: new BoxDecoration(
            color: Colors.black12,
            //设置四周圆角 角度
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      width: 80,
                      height: 110,
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
                  Container(
                    width: 200,
                    height: double.infinity,
                    // color: Colors.yellow,
                    margin: EdgeInsets.only(left: 10),
                    padding: EdgeInsets.only(top: 10,bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text('国庆假期黄金周',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                        Text('国庆一日游 ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                        Text('特价 走过路过不要错过',style: TextStyle(fontSize: 12,color: Colors.black26),),
                        Text('￥81',style: TextStyle(fontSize: 14,color: Colors.yellow),),
                        Text('今天是周日',style: TextStyle(fontSize: 10,color: Colors.black26),),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: 40,height: double.infinity,
                child: IconButton(
                  icon: const Icon(
                    Icons.more_horiz,
                    color: Colors.black26,
                    size: 30,
                  ),
                  tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                  onPressed: () => _goToHome_Page(context),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 100,
          height: 130,
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.only(left: 10,right: 10),
          decoration: new BoxDecoration(
            color: Colors.black12,
            //设置四周圆角 角度
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      width: 80,
                      height: 110,
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
                  Container(
                    width: 200,
                    height: double.infinity,
                    // color: Colors.yellow,
                    margin: EdgeInsets.only(left: 10),
                    padding: EdgeInsets.only(top: 10,bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text('国庆假期黄金周',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                        Text('国庆一日游 ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                        Text('特价 走过路过不要错过',style: TextStyle(fontSize: 12,color: Colors.black26),),
                        Text('￥81',style: TextStyle(fontSize: 14,color: Colors.yellow),),
                        Text('今天是周日',style: TextStyle(fontSize: 10,color: Colors.black26),),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: 40,height: double.infinity,
                child: IconButton(
                  icon: const Icon(
                    Icons.more_horiz,
                    color: Colors.black26,
                    size: 30,
                  ),
                  tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                  onPressed: () => _goToHome_Page(context),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 100,
          height: 130,
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.only(left: 10,right: 10),
          decoration: new BoxDecoration(
            color: Colors.black12,
            //设置四周圆角 角度
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      width: 80,
                      height: 110,
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
                  Container(
                    width: 200,
                    height: double.infinity,
                    // color: Colors.yellow,
                    margin: EdgeInsets.only(left: 10),
                    padding: EdgeInsets.only(top: 10,bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text('国庆假期黄金周',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                        Text('国庆一日游 ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                        Text('特价 走过路过不要错过',style: TextStyle(fontSize: 12,color: Colors.black26),),
                        Text('￥81',style: TextStyle(fontSize: 14,color: Colors.yellow),),
                        Text('今天是周日',style: TextStyle(fontSize: 10,color: Colors.black26),),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: 40,height: double.infinity,
                child: IconButton(
                  icon: const Icon(
                    Icons.more_horiz,
                    color: Colors.black26,
                    size: 30,
                  ),
                  tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                  onPressed: () => _goToHome_Page(context),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

