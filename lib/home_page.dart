import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<HomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   onPressed: null,
        // ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert_rounded),
          )
        ],
        flexibleSpace: SafeArea(
          child: IconButton(
            icon: Icon(
              Icons.camera,
              color: Colors.white,
              size: 40,
            ),
            onPressed: () {},
          ),
        ),
        bottom: PreferredSize(
          child: Container(),
          preferredSize: Size.fromHeight(40.0),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Yamini"),
              accountEmail: Text("yamileo@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Text("Yami"),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  child: Text("Yami"),
                  backgroundColor: Colors.white,
                )
              ],
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text("All Inbox"),
            ),
            ListTile(
              leading: Icon(Icons.inbox),
              title: Text("Primary"),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text("Social"),
            ),
            ListTile(
              leading: Icon(Icons.local_offer),
              title: Text("Promotions"),
            ),
            // Divider(
            //   height: 20,
            // ),
          ],
        ),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print("yamiiiii");
        },
      ),
      persistentFooterButtons: [
        ElevatedButton(
          onPressed: () {
            print("persistent foot btn1");
          },
          child: Icon(Icons.add),
        ),
        OutlinedButton(
          onPressed: () {
            print("outline btn");
          },
          child: Icon(Icons.clear),
        ),
      ],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: 1,
        onTap: (int index) {
          print(index);
        },
        fixedColor: Colors.green,
        items: [
          BottomNavigationBarItem(
            label: "home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "notifications",
            icon: Icon(Icons.notifications_active),
          ),
          BottomNavigationBarItem(
            label: "share",
            icon: Icon(Icons.share),
          ),
        ],
      ),
    );
  }
}
