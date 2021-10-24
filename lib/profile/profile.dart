import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color(0xFF6F35A5),
        title: const Text("Detail Developer"),
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
      body: ListView(
        children: <Widget>[
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                'assets/images/profilebg.jpg',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Positioned(
                bottom: -35,
                left: MediaQuery.of(context).size.width * 0.78,
                child: SizedBox(
                  height: 70.0,
                  width: 70.0,
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    padding: EdgeInsets.zero,
                    color: const Color(0xFF6F35A5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(200.0),
                      side: const BorderSide(color: Colors.white),
                    ),
                    onPressed: () {},
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(200.0),
                      child: Image.asset('assets/images/profile.jpg'),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -20,
                left: MediaQuery.of(context).size.width * 0.05,
                child: const SizedBox(
                  height: 70.0,
                  width: 270.0,
                  child: Text(
                    "Azhar Rizki Zulma",
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            margin: const EdgeInsets.only(bottom: 10.0),
            decoration: const BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: Colors.blue, width: 2.0)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const <Widget>[
                Text(
                  'Information',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color(0xFF6F35A5),
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(right: 20.0, left: 20.0, bottom: 10.0),
            margin: const EdgeInsets.only(bottom: 10.0),
            decoration: const BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: Colors.blue, width: 1.0)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Icon(
                  Icons.person,
                  color: Color(0xFF6F35A5),
                  size: 50.0,
                ),
                const SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'NAME',
                      style: TextStyle(
                        color: Color(0xFF6F35A5),
                        letterSpacing: 2.0,
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      "Azhar Rizki Zulma",
                      style: TextStyle(
                        color: Colors.blue,
                        letterSpacing: 2.0,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(height: 4.0),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(right: 20.0, left: 20.0, bottom: 10.0),
            margin: const EdgeInsets.only(bottom: 10.0),
            decoration: const BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: Colors.blue, width: 1.0)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Icon(
                  Icons.tag,
                  color: Color(0xFF6F35A5),
                  size: 50.0,
                ),
                const SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Education',
                      style: TextStyle(
                        color: Color(0xFF6F35A5),
                        letterSpacing: 2.0,
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      "Universitas Trisakti",
                      style: TextStyle(
                        color: Colors.blue,
                        letterSpacing: 2.0,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(height: 4.0),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(right: 20.0, left: 20.0, bottom: 10.0),
            margin: const EdgeInsets.only(bottom: 10.0),
            decoration: const BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: Colors.blue, width: 1.0)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Icon(
                  Icons.mail,
                  color: Color(0xFF6F35A5),
                  size: 50.0,
                ),
                const SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Email',
                      style: TextStyle(
                        color: Color(0xFF6F35A5),
                        letterSpacing: 2.0,
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      "joe@mineversal.com",
                      style: TextStyle(
                        color: Colors.blue,
                        letterSpacing: 2.0,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(height: 4.0),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
