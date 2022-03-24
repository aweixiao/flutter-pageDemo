import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_demo/view/page_demo/HomePage.dart';

class ListThree extends StatefulWidget {
  const ListThree({Key? key}) : super(key: key);

  @override
  _ListThreeState createState() => _ListThreeState();
}

void _gohomepage(BuildContext context) {
  Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
    return new Home_Page();
  }));
}

class _ListThreeState extends State<ListThree> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: () => MaterialApp(
          theme: ThemeData(primaryColor: const Color.fromARGB(255, 240, 242, 246)),
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            backgroundColor: Color.fromARGB(255, 240, 242, 246),
            appBar: PreferredSize(
              child: AppBar(
                backgroundColor: Color.fromARGB(255, 140, 108, 228),
                elevation: 0,
                leading: Center(
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(12))
                    ),
                    child: InkWell(
                      child: Icon(Icons.arrow_back,size: 20,color: Colors.black,),
                      onTap: () => _gohomepage(context),
                    ),
                  ),
                ),
                title: Text('Hotels'),
                centerTitle: true,
                actions: <Widget>[
                  Center(
                    child: Container(
                      width: 30,
                      height: 30,
                      margin: EdgeInsets.only(right: 15),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(12))
                      ),
                      child: InkWell(
                        child: Icon(Icons.reorder,size: 20,color: Colors.black,),
                      ),
                    ),
                  )
                ],
              ),
                // 设置appbar的高度
                preferredSize: Size.fromHeight(60)
            ),
                body:shoplistThree()
          ),
    ));
  }
}

class shoplistThree extends StatefulWidget {
  const shoplistThree({Key? key}) : super(key: key);

  @override
  _shoplistThreeState createState() => _shoplistThreeState();
}

class _shoplistThreeState extends State<shoplistThree> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(child: Container(
          width: double.infinity,
          height: 80.w,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 140, 108, 228),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50))
          ),
        )),
        Positioned(
            child: Container(
              child: ListView(
                children: <Widget>[
                  Container(
                    width: 70.w,
                    margin: EdgeInsets.only(left: 15.w,right: 15.w,top: 30.w),
                    decoration: BoxDecoration(
                        color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          height: 80.w,
                          margin: EdgeInsets.only(right: 20.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5),topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(5),bottomRight: Radius.circular(10)
                            ),
                            image: new DecorationImage(
                              fit: BoxFit.cover,
                              image: new NetworkImage(
                                  'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'),
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 90,
                          // color: Colors.orange,
                          padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 10),
                          decoration: BoxDecoration(
                              border: BorderDirectional(
                                  bottom: BorderSide(
                                    width: 1,
                                    color: Colors.black12,
                                  )
                              )
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Royai Palm Heritage',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                              Container(
                                margin: EdgeInsets.only(top: 4),
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.location_on,size: 20,color: Colors.redAccent,),
                                    Text('Today is Friday')
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 4),
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.star,size: 20,color: Colors.yellow,),
                                    Text('Today is Friday')
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 50,
                          padding: EdgeInsets.only(left: 10,right: 20),
                          margin: EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text("￥234",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                    Text('Algin')
                                  ],
                                ),
                              ),
                              RaisedButton(
                                color: Color.fromARGB(255,114, 92, 213),
                                onPressed: () {
                                  print('Book a Room');
                                },
                                child: Text('Book a Room',style: TextStyle(fontSize: 18.0,color: Colors.white),),
                                shape: RoundedRectangleBorder(
                                    side: BorderSide.none,
                                    borderRadius: BorderRadius.all(Radius.circular(50))
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 70.w,
                    margin: EdgeInsets.only(left: 15.w,right: 15.w,top: 30.w),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          height: 80.w,
                          margin: EdgeInsets.only(right: 20.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5),topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(5),bottomRight: Radius.circular(10)
                            ),
                            image: new DecorationImage(
                              fit: BoxFit.cover,
                              image: new NetworkImage(
                                  'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'),
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 90,
                          // color: Colors.orange,
                          padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 10),
                          decoration: BoxDecoration(
                              border: BorderDirectional(
                                  bottom: BorderSide(
                                    width: 1,
                                    color: Colors.black12,
                                  )
                              )
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Royai Palm Heritage',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                              Container(
                                margin: EdgeInsets.only(top: 4),
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.location_on,size: 20,color: Colors.redAccent,),
                                    Text('Today is Friday')
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 4),
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.star,size: 20,color: Colors.yellow,),
                                    Text('Today is Friday')
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 50,
                          padding: EdgeInsets.only(left: 10,right: 20),
                          margin: EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text("￥234",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                    Text('Algin')
                                  ],
                                ),
                              ),
                              RaisedButton(
                                color: Color.fromARGB(255,114, 92, 213),
                                onPressed: () {
                                  print('Book a Room');
                                },
                                child: Text('Book a Room',style: TextStyle(fontSize: 18.0,color: Colors.white),),
                                shape: RoundedRectangleBorder(
                                    side: BorderSide.none,
                                    borderRadius: BorderRadius.all(Radius.circular(50))
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 70.w,
                    margin: EdgeInsets.only(left: 15.w,right: 15.w,top: 30.w),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          height: 80.w,
                          margin: EdgeInsets.only(right: 20.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5),topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(5),bottomRight: Radius.circular(10)
                            ),
                            image: new DecorationImage(
                              fit: BoxFit.cover,
                              image: new NetworkImage(
                                  'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'),
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 90,
                          // color: Colors.orange,
                          padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 10),
                          decoration: BoxDecoration(
                              border: BorderDirectional(
                                  bottom: BorderSide(
                                    width: 1,
                                    color: Colors.black12,
                                  )
                              )
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Royai Palm Heritage',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                              Container(
                                margin: EdgeInsets.only(top: 4),
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.location_on,size: 20,color: Colors.redAccent,),
                                    Text('Today is Friday')
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 4),
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.star,size: 20,color: Colors.yellow,),
                                    Text('Today is Friday')
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 50,
                          padding: EdgeInsets.only(left: 10,right: 20),
                          margin: EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text("￥234",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                    Text('Algin')
                                  ],
                                ),
                              ),
                              RaisedButton(
                                color: Color.fromARGB(255,114, 92, 213),
                                onPressed: () {
                                  print('Book a Room');
                                },
                                child: Text('Book a Room',style: TextStyle(fontSize: 18.0,color: Colors.white),),
                                shape: RoundedRectangleBorder(
                                    side: BorderSide.none,
                                    borderRadius: BorderRadius.all(Radius.circular(50))
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 70.w,
                    margin: EdgeInsets.only(left: 15.w,right: 15.w,top: 30.w),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          height: 80.w,
                          margin: EdgeInsets.only(right: 20.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5),topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(5),bottomRight: Radius.circular(10)
                            ),
                            image: new DecorationImage(
                              fit: BoxFit.cover,
                              image: new NetworkImage(
                                  'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'),
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 90,
                          // color: Colors.orange,
                          padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 10),
                          decoration: BoxDecoration(
                              border: BorderDirectional(
                                  bottom: BorderSide(
                                    width: 1,
                                    color: Colors.black12,
                                  )
                              )
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Royai Palm Heritage',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                              Container(
                                margin: EdgeInsets.only(top: 4),
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.location_on,size: 20,color: Colors.redAccent,),
                                    Text('Today is Friday')
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 4),
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.star,size: 20,color: Colors.yellow,),
                                    Text('Today is Friday')
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 50,
                          padding: EdgeInsets.only(left: 10,right: 20),
                          margin: EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text("￥234",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                    Text('Algin')
                                  ],
                                ),
                              ),
                              RaisedButton(
                                color: Color.fromARGB(255,114, 92, 213),
                                onPressed: () {
                                  print('Book a Room');
                                },
                                child: Text('Book a Room',style: TextStyle(fontSize: 18.0,color: Colors.white),),
                                shape: RoundedRectangleBorder(
                                    side: BorderSide.none,
                                    borderRadius: BorderRadius.all(Radius.circular(50))
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
            )),
      ],
    );
  }
}

