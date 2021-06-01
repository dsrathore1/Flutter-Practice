import 'package:flutter/material.dart';

class Day3 extends StatefulWidget {
  @override
  State createState() => Day3State();
}

class Day3State extends State<Day3> {
  final _drawer = Drawer(
    elevation: 12,
    child: Column(
      children: [
        UserAccountsDrawerHeader(
          arrowColor: Colors.black,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: [
                Colors.purple,
                Colors.indigoAccent,
              ],
            ),
          ),
          accountEmail: Text("abc@gmail.com"),
          accountName: Text("Rohit Khatri"),
          currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1621565999131-e5a3ced4df28?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80')),
        ),
        SizedBox(
          height: 30,
        ),
        Expanded(
          child: ListView(
            children: [
              ListTile(
                title: Text("Notifications"),
                leading: Icon(Icons.notifications),
                hoverColor: Colors.black38,
                onTap: () {},
              ),
              SizedBox(
                height: 40,
              ),
              ListTile(
                title: Text("Share"),
                leading: Icon(Icons.share),
                onTap: () {},
                hoverColor: Colors.black38,
              ),
              SizedBox(
                height: 40,
              ),
              ListTile(
                title: Text("Music"),
                leading: Icon(Icons.music_note),
                hoverColor: Colors.black38,
                onTap: () {},
              ),
              SizedBox(
                height: 40,
              ),
              ListTile(
                title: Text("Album"),
                leading: Icon(Icons.album_outlined),
                hoverColor: Colors.black38,
                onTap: () {},
              ),
              SizedBox(
                height: 40,
              ),
              ListTile(
                title: Text("Person"),
                hoverColor: Colors.black38,
                leading: Icon(Icons.person),
                onTap: () {},
              ),
              SizedBox(
                height: 40,
              ),
              ListTile(
                title: Text("Settings"),
                hoverColor: Colors.black38,
                leading: Icon(Icons.settings),
                onTap: () {},
              ),
            ],
          ),
        ),
        Divider(),
        Container(
          alignment: Alignment.centerRight,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.logout,
              size: 30,
            ),
            padding: EdgeInsets.symmetric(horizontal: 40),
          ),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: _drawer,
        appBar: AppBar(
          backgroundColor: Colors.orange[200],
          title: Text(
            "Web Code",
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Cursive",
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          elevation: 0,
          actions: [
            
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                elevation: 0,
                padding: EdgeInsets.all(25),
              ),
              child: Text(
                'Home',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(25),
              ),
              child: Text(
                'About',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(25),
              ),
              child: Text(
                'Service',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(25),
              ),
              child: Text(
                'Contact',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        persistentFooterButtons: [
          ElevatedButton(
            child: Icon(Icons.print, color: Colors.white),
            style: ElevatedButton.styleFrom(
              primary: Colors.teal,
              padding: EdgeInsets.all(15),
            ),
            onPressed: () {},
          ),
          SizedBox(width: 20),
          ElevatedButton(
            child: Icon(Icons.save, color: Colors.teal),
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              padding: EdgeInsets.all(15),
            ),
            onPressed: () {},
          ),
        ],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Hello Brother",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
