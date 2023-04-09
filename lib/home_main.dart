import 'package:flutter/material.dart';

class MainHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'chat used firebase',
      theme: ThemeData(primaryColor: Colors.white),
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            body: TabBarView(
              children: [
                Text('홈'),
                Text('레코드'),
                Text('코칭'),
                Text('세팅'),
              ],
            ),
            bottomNavigationBar: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: '홈',
              ),
              Tab(
                icon: Icon(Icons.chat),
                text: '레코드',
              ),
              Tab(
                icon: Icon(Icons.people),
                text: '코칭',
              ),
              Tab(
                icon: Icon(Icons.account_circle),
                text: '세팅',
              )
            ]),
          )),
    );
  }
}

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12, //색상
      child: Container(
        height: 70,
        padding: EdgeInsets.only(bottom: 10, top: 5),
        child: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Colors.deepOrange,
          indicatorWeight: 4,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.black38,
          labelStyle: TextStyle(
              fontSize: 17),

          tabs: [
            Tab(
              icon: Icon(
                Icons.home,
                size: 20,
              ),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.sort_by_alpha_rounded, size: 20),
              text: 'Vocab',
            ),
            Tab(
              icon: Icon(
                Icons.library_books,
                size: 20,
              ),
              text: 'Library',
            ),
            Tab(
              icon: Icon(
                Icons.person,
                size: 20,
              ),
              text: 'MyPage',
            )
          ],
        ),
      ),
    );
  }
}