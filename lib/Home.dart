import 'package:flutter/material.dart';
import 'package:flutter_app1/Account.dart';
import 'package:flutter_app1/Camera.dart';

class Home extends StatelessWidget {
  bool hasAuth = false;

  get topTabsHomeAccount =>
      // if hasAccount is true
      [
        Tab(icon: Icon(Icons.cake)),
        Tab(icon: Icon(Icons.face)),
      ];

  get topTabsHome =>
      // if hasAccount is false
      [
        Tab(icon: Icon(Icons.person)),
        Tab(icon: Icon(Icons.camera_alt)),
      ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: Text("Title"),
              bottom: TabBar(
                tabs: hasAuth ? topTabsHomeAccount : topTabsHome,
              ),
            ),
            body: TabBarView(
              children: [Account(), camera()],
            ),
          )),
      debugShowCheckedModeBanner: false,
    );
  }
}
