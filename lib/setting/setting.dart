import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
            icon: const Icon(Icons.person),
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
      body: ListView(
        children: <Widget>[
          const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: const Text(
              "Profile & Setting",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: const Text("Profile"),
            trailing: Container(
              padding: const EdgeInsets.only(right: 12.0),
              child: const Icon(Icons.account_circle),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 7.0)),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: const Text(
              "Follow Us",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: const Text("Telephone"),
            trailing: Container(
              padding: const EdgeInsets.only(right: 12.0),
              child: const Icon(Icons.phone),
            ),
            onTap: () async {
              await launch('tel:+6285156633114');
            },
          ),
          ListTile(
            title: const Text("Email"),
            trailing: Container(
              padding: const EdgeInsets.only(right: 12.0),
              child: const Icon(Icons.mail_outline),
            ),
            onTap: () async {
              await launch('mailto:admin@mineversal.com');
            },
          ),
          ListTile(
            title: const Text("Youtube"),
            trailing: Container(
              padding: const EdgeInsets.only(right: 12.0),
              child: const Icon(Icons.play_arrow),
            ),
            onTap: () async {
              await launch('https://youtube.com/mineversal');
            },
          ),
          ListTile(
            title: const Text("Instagram"),
            trailing: Container(
              padding: const EdgeInsets.only(right: 12.0),
              child: const Icon(Icons.camera_alt_outlined),
            ),
            onTap: () async {
              await launch('https://instagram.com/mineversal');
            },
          ),
          ListTile(
            title: const Text("Facebook"),
            trailing: Container(
              padding: const EdgeInsets.only(right: 12.0),
              child: const Icon(Icons.facebook),
            ),
            onTap: () async {
              await launch('https://facebook.com/mineversal');
            },
          ),
          ListTile(
            title: const Text("Website"),
            trailing: Container(
              padding: const EdgeInsets.only(right: 12.0),
              child: const Icon(Icons.ios_share),
            ),
            onTap: () async {
              await launch('https://mineversal.com/');
            },
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 7.0)),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: const Text(
              "Privacy & Terms",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: const Text("Privacy Policy"),
            trailing: Container(
              padding: const EdgeInsets.only(right: 12.0),
              child: const Icon(Icons.ios_share),
            ),
            onTap: () async {
              await launch('https://mineversal.com/');
            },
          ),
          ListTile(
            title: const Text("Term of Use"),
            trailing: Container(
              padding: const EdgeInsets.only(right: 12.0),
              child: const Icon(Icons.ios_share),
            ),
            onTap: () async {
              await launch('https://mineversal.com/');
            },
          ),
          ListTile(
            title: const Text("Disclaimer"),
            trailing: Container(
              padding: const EdgeInsets.only(right: 12.0),
              child: const Icon(Icons.ios_share),
            ),
            onTap: () async {
              await launch('https://mineversal.com/');
            },
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 200.0,
        child: Center(
          child: Column(
            children: <Widget>[
              const Padding(padding: EdgeInsets.symmetric(vertical: 7.0)),
              const Text(
                "Created & Developed by Mineversal",
                style: TextStyle(fontSize: 12.0),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 7.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(Icons.copyright, size: 10.0),
                  Text(
                    '2021 Mineversal. All rights reserved',
                    style: TextStyle(fontSize: 12.0),
                  )
                ],
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 3.0)),
              const Padding(padding: EdgeInsets.symmetric(vertical: 3.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/ensiklopedi.png',
                    width: 95.0,
                  ),
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),
                  Image.asset(
                    'assets/images/logo2.png',
                    width: 95.0,
                  ),
                ],
              ),
              Image.asset(
                'assets/images/logo.png',
                width: 200.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
