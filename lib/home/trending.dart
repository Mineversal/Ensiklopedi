import 'package:ensiklopedi/content/content.dart';
import 'package:ensiklopedi/model/data.dart';
import 'package:flutter/material.dart';

final List<Data> allData = dataList;

class Trending extends StatelessWidget {
  const Trending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return TrendingList();
          } else if (constraints.maxWidth <= 1200) {
            return const TrendingGrid(
              gridCount: 4,
            );
          } else {
            return const TrendingGrid(gridCount: 6);
          }
        },
      ),
    );
  }
}

class TrendingGrid extends StatelessWidget {
  final int gridCount;

  const TrendingGrid({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Data> contents = allData;

    return Scrollbar(
      isAlwaysShown: true,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: GridView.count(
          crossAxisCount: gridCount,
          children: contents.map((data) {
            var shortText = data.description;

            if (data.description.length > 20) {
              shortText = shortText.substring(0, 20) + "...";
            } else {
              shortText = shortText;
            }

            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Content(data: data);
                }));
              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Image.asset(
                        data.imageAsset,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        data.name,
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                      child: Text(
                        shortText,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class TrendingList extends StatelessWidget {
  TrendingList({Key? key}) : super(key: key);

  final List<Data> contents = allData;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      const Padding(
        padding: EdgeInsets.all(10.0),
      ),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text("Trending Now",
                style: TextStyle(
                  fontSize: 30.0,
                  color: Color(0xFF6F35A5),
                )),
            IconButton(
              icon: const Icon(
                Icons.trending_up,
                size: 30.0,
                color: Color(0xFF6F35A5),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      const SizedBox(height: 5),
      Expanded(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          child: ListView.builder(
            itemCount: contents.length,
            itemBuilder: (context, index) {
              final data = contents[index];
              var shortText = data.description;
              if (data.description.length > 20) {
                shortText = shortText.substring(0, 20) + "...";
              } else {
                shortText = shortText;
              }
              return buildData(data, shortText);
            },
          ),
        ),
      ),
    ]);
  }

  Widget buildData(Data data, String shortText) => Container(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: <Widget>[ListCard(data: data, shortText: shortText)],
          ),
        ),
      );
}

class ListCard extends StatelessWidget {
  const ListCard({Key? key, required this.data, required this.shortText}) : super(key: key);

  final Data data;
  final String shortText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        gradient: const LinearGradient(
          colors: [Color(0xFF6F35A5), Colors.blue],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
        color: const Color(0xFF6F35A5),
      ),
      child: Center(
        child: InkWell(
          borderRadius: BorderRadius.circular(15.0),
          child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  bottomLeft: Radius.circular(15.0),
                ),
                child: Image.asset(data.imageAsset, width: 150.0),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      data.name,
                      style: const TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      shortText,
                      style: const TextStyle(color: Colors.white54),
                    ),
                  ],
                ),
              ),
            ],
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Content(data: data);
            }));
          },
        ),
      ),
    );
  }
}
