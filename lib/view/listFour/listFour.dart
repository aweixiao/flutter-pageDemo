import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_demo/view/page_demo/HomePage.dart';

class ListFour extends StatefulWidget {
  const ListFour({Key? key}) : super(key: key);

  @override
  _ListFourState createState() => _ListFourState();
}

void _gohomepage(BuildContext context) {
  Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
    return new Home_Page();
  }));
}

class _ListFourState extends State<ListFour> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: ()=> MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            // backgroundColor: Color.fromARGB(255, 250, 250, 250),
            appBar: AppBar(
              elevation: 0,
              shape: Border(
                  bottom: BorderSide(
                      width: 1,
                      color: Colors.black12
                  )
              ),
              backgroundColor: Color.fromARGB(255, 250, 250, 250),
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
              title: Text('鸿星尔克',style: TextStyle(color: Colors.black),),
              centerTitle: true,
              actions: [
                IconButton(
                  icon: const Icon(
                    Icons.add_a_photo,
                    color: Colors.black26,
                    size: 26,
                  ),
                  tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                  onPressed: () => _gohomepage(context),
                )
              ],
            ),
            body: ListFourContent(),
          ),
        ));
  }
}

class ListFourContent extends StatefulWidget {
  const ListFourContent({Key? key}) : super(key: key);

  @override
  _ListFourContentState createState() => _ListFourContentState();
}

class _ListFourContentState extends State<ListFourContent> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 10.w),
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              width: 400.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 162.w,
                    // height: 230.h,
                    margin: EdgeInsets.only(bottom: 6),
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Positioned(
                              child: Container(
                                width: double.infinity,
                                height: 150.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(2)),
                                  image: new DecorationImage(
                                    fit: BoxFit.cover,
                                    image: new NetworkImage(
                                        'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'),
                                  ),
                                ),
                              ),),
                            Positioned(
                              top: 5,
                                right: 6,
                                child: Icon(CupertinoIcons.heart, size: 30, color: Colors.black)
                            )
                          ],
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 4,bottom: 4),
                                child: Text('Address',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: Colors.black26),),
                              ),
                              Container(
                                child: Text('Nave Jeasos',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                              ),
                              Container(
                                // color: Colors.redAccent,
                                margin: EdgeInsets.only(top: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Icon(Icons.star,size: 20,color: Colors.yellow,),
                                          Container(
                                            margin: EdgeInsets.only(left: 5.w),
                                            child: Text('4.5',style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black26,
                                              fontWeight: FontWeight.w600,
                                            ),),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            child: Text('￥63',style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.black26,
                                                fontWeight: FontWeight.w600,
                                                // 文字删除线
                                                decoration: TextDecoration.lineThrough
                                            ),
                                            ),
                                          ),
                                          Container(
                                            child: Text('￥36',style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black,
                                            ),
                                            ),
                                          ),
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
                  ),
                  Container(
                    width: 162.w,
                    // height: 230.h,
                    margin: EdgeInsets.only(bottom: 6),
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Positioned(
                              child: Container(
                                width: double.infinity,
                                height: 150.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(2)),
                                  image: new DecorationImage(
                                    fit: BoxFit.cover,
                                    image: new NetworkImage(
                                        'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'),
                                  ),
                                ),
                              ),),
                            Positioned(
                                top: 5,
                                right: 6,
                                child: Icon(CupertinoIcons.heart, size: 30, color: Colors.black)
                            )
                          ],
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 4,bottom: 4),
                                child: Text('Address',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: Colors.black26),),
                              ),
                              Container(
                                child: Text('Nave Jeasos',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                              ),
                              Container(
                                // color: Colors.redAccent,
                                margin: EdgeInsets.only(top: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Icon(Icons.star,size: 20,color: Colors.yellow,),
                                          Container(
                                            margin: EdgeInsets.only(left: 5.w),
                                            child: Text('4.5',style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black26,
                                              fontWeight: FontWeight.w600,
                                            ),),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            child: Text('￥63',style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.black26,
                                                fontWeight: FontWeight.w600,
                                                // 文字删除线
                                                decoration: TextDecoration.lineThrough
                                            ),
                                            ),
                                          ),
                                          Container(
                                            child: Text('￥36',style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black,
                                            ),
                                            ),
                                          ),
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
                  ),
                ],
              ),
            ),
            Container(
              width: 400.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 162.w,
                    // height: 230.h,
                    margin: EdgeInsets.only(bottom: 6),
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Positioned(
                              child: Container(
                                width: double.infinity,
                                height: 150.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(2)),
                                  image: new DecorationImage(
                                    fit: BoxFit.cover,
                                    image: new NetworkImage(
                                        'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'),
                                  ),
                                ),
                              ),),
                            Positioned(
                                top: 5,
                                right: 6,
                                child: Icon(CupertinoIcons.heart, size: 30, color: Colors.black)
                            )
                          ],
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 4,bottom: 4),
                                child: Text('Address',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: Colors.black26),),
                              ),
                              Container(
                                child: Text('Nave Jeasos',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                              ),
                              Container(
                                // color: Colors.redAccent,
                                margin: EdgeInsets.only(top: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Icon(Icons.star,size: 20,color: Colors.yellow,),
                                          Container(
                                            margin: EdgeInsets.only(left: 5.w),
                                            child: Text('4.5',style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black26,
                                              fontWeight: FontWeight.w600,
                                            ),),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            child: Text('￥63',style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.black26,
                                                fontWeight: FontWeight.w600,
                                                // 文字删除线
                                                decoration: TextDecoration.lineThrough
                                            ),
                                            ),
                                          ),
                                          Container(
                                            child: Text('￥36',style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black,
                                            ),
                                            ),
                                          ),
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
                  ),
                  Container(
                    width: 162.w,
                    // height: 230.h,
                    margin: EdgeInsets.only(bottom: 6),
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Positioned(
                              child: Container(
                                width: double.infinity,
                                height: 150.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(2)),
                                  image: new DecorationImage(
                                    fit: BoxFit.cover,
                                    image: new NetworkImage(
                                        'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'),
                                  ),
                                ),
                              ),),
                            Positioned(
                                top: 5,
                                right: 6,
                                child: Icon(CupertinoIcons.heart, size: 30, color: Colors.black)
                            )
                          ],
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 4,bottom: 4),
                                child: Text('Address',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: Colors.black26),),
                              ),
                              Container(
                                child: Text('Nave Jeasos',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                              ),
                              Container(
                                // color: Colors.redAccent,
                                margin: EdgeInsets.only(top: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Icon(Icons.star,size: 20,color: Colors.yellow,),
                                          Container(
                                            margin: EdgeInsets.only(left: 5.w),
                                            child: Text('4.5',style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black26,
                                              fontWeight: FontWeight.w600,
                                            ),),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            child: Text('￥63',style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.black26,
                                                fontWeight: FontWeight.w600,
                                                // 文字删除线
                                                decoration: TextDecoration.lineThrough
                                            ),
                                            ),
                                          ),
                                          Container(
                                            child: Text('￥36',style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black,
                                            ),
                                            ),
                                          ),
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
                  ),
                ],
              ),
            ),
            Container(
              width: 400.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 162.w,
                    // height: 230.h,
                    margin: EdgeInsets.only(bottom: 6),
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Positioned(
                              child: Container(
                                width: double.infinity,
                                height: 150.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(2)),
                                  image: new DecorationImage(
                                    fit: BoxFit.cover,
                                    image: new NetworkImage(
                                        'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'),
                                  ),
                                ),
                              ),),
                            Positioned(
                                top: 5,
                                right: 6,
                                child: Icon(CupertinoIcons.heart, size: 30, color: Colors.black)
                            )
                          ],
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 4,bottom: 4),
                                child: Text('Address',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: Colors.black26),),
                              ),
                              Container(
                                child: Text('Nave Jeasos',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                              ),
                              Container(
                                // color: Colors.redAccent,
                                margin: EdgeInsets.only(top: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Icon(Icons.star,size: 20,color: Colors.yellow,),
                                          Container(
                                            margin: EdgeInsets.only(left: 5.w),
                                            child: Text('4.5',style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black26,
                                              fontWeight: FontWeight.w600,
                                            ),),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            child: Text('￥63',style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.black26,
                                                fontWeight: FontWeight.w600,
                                                // 文字删除线
                                                decoration: TextDecoration.lineThrough
                                            ),
                                            ),
                                          ),
                                          Container(
                                            child: Text('￥36',style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black,
                                            ),
                                            ),
                                          ),
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
                  ),
                  Container(
                    width: 162.w,
                    // height: 230.h,
                    margin: EdgeInsets.only(bottom: 6),
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Positioned(
                              child: Container(
                                width: double.infinity,
                                height: 150.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(2)),
                                  image: new DecorationImage(
                                    fit: BoxFit.cover,
                                    image: new NetworkImage(
                                        'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'),
                                  ),
                                ),
                              ),),
                            Positioned(
                                top: 5,
                                right: 6,
                                child: Icon(CupertinoIcons.heart, size: 30, color: Colors.black)
                            )
                          ],
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 4,bottom: 4),
                                child: Text('Address',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: Colors.black26),),
                              ),
                              Container(
                                child: Text('Nave Jeasos',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                              ),
                              Container(
                                // color: Colors.redAccent,
                                margin: EdgeInsets.only(top: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Icon(Icons.star,size: 20,color: Colors.yellow,),
                                          Container(
                                            margin: EdgeInsets.only(left: 5.w),
                                            child: Text('4.5',style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black26,
                                              fontWeight: FontWeight.w600,
                                            ),),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            child: Text('￥63',style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.black26,
                                                fontWeight: FontWeight.w600,
                                                // 文字删除线
                                                decoration: TextDecoration.lineThrough
                                            ),
                                            ),
                                          ),
                                          Container(
                                            child: Text('￥36',style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black,
                                            ),
                                            ),
                                          ),
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
                  ),
                ],
              ),
            ),
            Container(
              width: 400.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 162.w,
                    // height: 230.h,
                    margin: EdgeInsets.only(bottom: 6),
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Positioned(
                              child: Container(
                                width: double.infinity,
                                height: 150.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(2)),
                                  image: new DecorationImage(
                                    fit: BoxFit.cover,
                                    image: new NetworkImage(
                                        'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'),
                                  ),
                                ),
                              ),),
                            Positioned(
                                top: 5,
                                right: 6,
                                child: Icon(CupertinoIcons.heart, size: 30, color: Colors.black)
                            )
                          ],
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 4,bottom: 4),
                                child: Text('Address',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: Colors.black26),),
                              ),
                              Container(
                                child: Text('Nave Jeasos',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                              ),
                              Container(
                                // color: Colors.redAccent,
                                margin: EdgeInsets.only(top: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Icon(Icons.star,size: 20,color: Colors.yellow,),
                                          Container(
                                            margin: EdgeInsets.only(left: 5.w),
                                            child: Text('4.5',style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black26,
                                              fontWeight: FontWeight.w600,
                                            ),),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            child: Text('￥63',style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.black26,
                                                fontWeight: FontWeight.w600,
                                                // 文字删除线
                                                decoration: TextDecoration.lineThrough
                                            ),
                                            ),
                                          ),
                                          Container(
                                            child: Text('￥36',style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black,
                                            ),
                                            ),
                                          ),
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
                  ),
                  Container(
                    width: 162.w,
                    // height: 230.h,
                    margin: EdgeInsets.only(bottom: 6),
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Positioned(
                              child: Container(
                                width: double.infinity,
                                height: 150.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(2)),
                                  image: new DecorationImage(
                                    fit: BoxFit.cover,
                                    image: new NetworkImage(
                                        'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'),
                                  ),
                                ),
                              ),),
                            Positioned(
                                top: 5,
                                right: 6,
                                child: Icon(CupertinoIcons.heart, size: 30, color: Colors.black)
                            )
                          ],
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 4,bottom: 4),
                                child: Text('Address',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: Colors.black26),),
                              ),
                              Container(
                                child: Text('Nave Jeasos',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                              ),
                              Container(
                                // color: Colors.redAccent,
                                margin: EdgeInsets.only(top: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Icon(Icons.star,size: 20,color: Colors.yellow,),
                                          Container(
                                            margin: EdgeInsets.only(left: 5.w),
                                            child: Text('4.5',style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black26,
                                              fontWeight: FontWeight.w600,
                                            ),),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            child: Text('￥63',style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.black26,
                                                fontWeight: FontWeight.w600,
                                                // 文字删除线
                                                decoration: TextDecoration.lineThrough
                                            ),
                                            ),
                                          ),
                                          Container(
                                            child: Text('￥36',style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black,
                                            ),
                                            ),
                                          ),
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
                  ),
                ],
              ),
            ),
          ],
        ),

      ],
    );
  }
}

