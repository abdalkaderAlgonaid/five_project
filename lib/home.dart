import 'package:flutter/material.dart';
import 'package:five_project/login.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({this.name = ""});
  String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Hi :" + name,
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        backgroundColor: Colors.cyan,
      ),
      body: Text("data", style: TextStyle(color: Colors.black, fontSize: 25)),
      drawer: Drawer(
        backgroundColor: Colors.green,
        child: Column(
          children: [
            DrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/image/a.jpg"),
                      radius: 50,
                    ),
                    Divider(
                      indent: 60,
                      endIndent: 60,
                      height: 3,
                      color: Colors.black,
                      thickness: 1,
                    ),
                    Text(
                      "abdoalkader@gemail.com",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                )),
            Expanded(
                child: ListView(
              padding: EdgeInsets.zero,
              children: [
                buildListTile(context, "home", Icon(Icons.home), MyHomePage()),
                buildListTile(
                    context, "login", Icon(Icons.login), MyHomePage()),
                buildListTile(
                    context, "home", Icon(Icons.account_circle), MyHomePage()),
                buildListTile(context, "login", Icon(Icons.add), MyHomePage()),
                buildListTile(
                    context, "home", Icon(Icons.folder), MyHomePage()),
                buildListTile(
                    context, "login", Icon(Icons.saved_search), MyHomePage()),
                buildListTile(context, "home", Icon(Icons.call), MyHomePage()),
                buildListTile(context, "login", Icon(Icons.account_balance),
                    MyHomePage()),
                buildListTile(
                    context, "home", Icon(Icons.add_circle), MyHomePage()),
                buildListTile(
                    context, "login", Icon(Icons.login), MyHomePage()),
                buildListTile(context, "home", Icon(Icons.maps_ugc_outlined),
                    MyHomePage()),
                buildListTile(
                    context, "login", Icon(Icons.login), MyHomePage()),
                buildListTile(context, "home", Icon(Icons.home), MyHomePage()),
                buildListTile(
                    context, "login", Icon(Icons.login), MyHomePage()),
                buildListTile(context, "home", Icon(Icons.home), MyHomePage()),
                buildListTile(
                    context, "login", Icon(Icons.settings), MyHomePage()),
              ],
            ))
          ],
        ),
      ),
    );
  }

  buildListTile(
      BuildContext context, String s, Icon icon, MyHomePage MyHomePage) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2.0),
      child: ListTile(
        title: Text("abdalkader"),
        subtitle: Text("algonaid"),
        tileColor: Colors.white,
        leading: icon,
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => login("ahmde"),
              ),
              (route) => false);

          //  MaterialPageRoute(
          //builder: (context) => MyHomePage("ahmde"),

          //);
          // (route) => false);
        },
      ),
    );
  }
}
