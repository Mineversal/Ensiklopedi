import 'package:ensiklopedi/home/home.dart';
import 'package:ensiklopedi/home/search.dart';
import 'package:ensiklopedi/home/trending.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> with SingleTickerProviderStateMixin {
  late TabController controller;

  Future<dynamic> exitDialog() {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Are you sure?'),
        content: const Text('Do you want exit Ensiklopedi :('),
        actions: [
          // ignore: deprecated_member_use
          FlatButton(
            child: const Text("CANCEL"),
            onPressed: () {
              Navigator.of(context).pop(false);
            },
          ),
          // ignore: deprecated_member_use
          FlatButton(
            child: const Text("EXIT"),
            onPressed: () {
              SystemNavigator.pop();
            },
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    controller = TabController(
      length: 3,
      vsync: this,
      initialIndex: 1,
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        exitDialog();
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF6F35A5),
          title: const Text("Ensiklopedi"),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                Navigator.pushNamed(context, '/setting');
              },
            ),
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF6F35A5), Colors.blue],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          elevation: 20,
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              const UserAccountsDrawerHeader(
                accountName: Text('User'),
                accountEmail: Text('user@mineversal.com'),
                currentAccountPicture: CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/ensiklopedi.png")),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                    image: AssetImage("assets/images/background.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ListTile(
                title: const Text("Profile Developer"),
                trailing: const Icon(Icons.account_circle),
                onTap: () {
                  Navigator.pushNamed(context, '/profile');
                },
              ),
              ListTile(
                title: const Text("Setting"),
                trailing: const Icon(Icons.settings),
                onTap: () {
                  Navigator.pushNamed(context, '/setting');
                },
              ),
              ListTile(
                title: const Text("Close"),
                trailing: const Icon(Icons.close),
                onTap: () {
                  exitDialog();
                },
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: const <Widget>[
            Trending(),
            Home(),
            Search(),
          ],
        ),
        bottomNavigationBar: Material(
          color: const Color(0xFF6F35A5),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF6F35A5), Colors.blue],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
            ),
            child: TabBar(
              controller: controller,
              indicatorColor: Colors.white,
              tabs: const <Widget>[
                Tab(
                  icon: Icon(Icons.trending_up),
                  text: "Trending",
                ),
                Tab(
                  icon: Icon(Icons.menu),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(Icons.search),
                  text: "Search",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
