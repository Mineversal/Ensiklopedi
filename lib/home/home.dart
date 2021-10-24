import 'package:ensiklopedi/content/content.dart';
import 'package:ensiklopedi/model/data.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return const HomeList();
          } else {
            return const HomeGrid();
          }
        },
      ),
    );
  }
}

class HomeList extends StatelessWidget {
  const HomeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> contentSliders = dataList
        .map((item) => Container(
              margin: const EdgeInsets.all(1.0),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.asset(item.imageAsset,
                          fit: BoxFit.cover, width: 1000.0),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          child: Text(
                            item.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      // ignore: deprecated_member_use
                      FlatButton(
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.transparent,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Content(data: item);
                            }));
                          }),
                    ],
                  )),
            ))
        .toList();

    return ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text("Did you know us?",
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Color(0xFF6F35A5),
                        )),
                    IconButton(
                      icon: const Icon(
                        Icons.menu,
                        size: 30.0,
                        color: Color(0xFF6F35A5),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Card(
                  elevation: 4.0,
                  child: Column(
                    children: [
                      SizedBox(
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(5.0),
                            topRight: Radius.circular(5.0),
                          ),
                          child: Image.asset(
                            "assets/images/background.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Mineversal, which can be interpreted as \"common property\", is a new technology company founded by Joe Hawk. Mineversal has a mission that is to advance technological developments and create new innovations in the world of technology to support the rapidly developing times.",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      ButtonBar(
                        children: [
                          TextButton(
                            child: const Text('VISIT US'),
                            onPressed: () {
                              launch("https://mineversal.com");
                            },
                          ),
                          TextButton(
                            child: const Text('OUR APPS'),
                            onPressed: () {
                              launch(
                                  "https://play.google.com/store/apps/dev?id=7070273527676427905");
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text("Hot Knowledge",
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Color(0xFF6F35A5),
                        )),
                    IconButton(
                      icon: const Icon(
                        Icons.menu,
                        size: 30.0,
                        color: Color(0xFF6F35A5),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
              ),
              CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  initialPage: 2,
                  autoPlay: true,
                ),
                items: contentSliders,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class HomeGrid extends StatelessWidget {
  const HomeGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> contentSliders = dataList
        .map((item) => Container(
              margin: const EdgeInsets.all(1.0),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.asset(item.imageAsset,
                          fit: BoxFit.cover, width: 1000.0),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          child: Text(
                            item.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      // ignore: deprecated_member_use
                      FlatButton(
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.transparent,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Content(data: item);
                            }));
                          }),
                    ],
                  )),
            ))
        .toList();

    return Scrollbar(
      isAlwaysShown: true,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text("Did you know us?",
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Color(0xFF6F35A5),
                          )),
                      IconButton(
                        icon: const Icon(
                          Icons.menu,
                          size: 25.0,
                          color: Color(0xFF6F35A5),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Card(
                    elevation: 4.0,
                    child: Column(
                      children: [
                        SizedBox(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(5.0),
                              topRight: Radius.circular(5.0),
                            ),
                            child: Image.asset(
                              "assets/images/background.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        ButtonBar(
                          children: [
                            TextButton(
                              child: const Text('VISIT US'),
                              onPressed: () {
                                launch("https://mineversal.com");
                              },
                            ),
                            TextButton(
                              child: const Text('OUR APPS'),
                              onPressed: () {
                                launch(
                                    "https://play.google.com/store/apps/dev?id=7070273527676427905");
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text("Hot Knowledge",
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Color(0xFF6F35A5),
                          )),
                      IconButton(
                        icon: const Icon(
                          Icons.menu,
                          size: 25.0,
                          color: Color(0xFF6F35A5),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    initialPage: 2,
                    autoPlay: true,
                  ),
                  items: contentSliders,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
