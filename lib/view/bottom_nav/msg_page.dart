import 'package:flutter/material.dart';

class MsgPage extends StatefulWidget {
  const MsgPage({Key? key}) : super(key: key);

  @override
  _MsgPageState createState() => _MsgPageState();
}

class _MsgPageState extends State<MsgPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('我的'),
            centerTitle: true,
            elevation: 0,
            backgroundColor: Color.fromARGB(255, 235, 122, 153),
          ),
        ));
  }
}
