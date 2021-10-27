import 'package:ensiklopedi/content/content.dart';
import 'package:ensiklopedi/model/data.dart';
import 'package:ensiklopedi/widget/search_widget.dart';
import 'package:flutter/material.dart';

final List<Data> allData = dataList;

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  late List<Data> _contents;
  String _query = '';

  @override
  void initState() {
    super.initState();
    _contents = allData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(10.0),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text("Search Something?",
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Color(0xFF6F35A5),
                    )),
                IconButton(
                  icon: const Icon(
                    Icons.search,
                    size: 30.0,
                    color: Color(0xFF6F35A5),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          buildSearch(),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ListView.builder(
                itemCount: _contents.length,
                itemBuilder: (context, index) {
                  final data = _contents[index];
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
          )
        ],
      ),
    );
  }

  void searchData(String _query) {
    final _contents = allData.where((item) {
      final titleLower = item.name.toLowerCase();
      final searchLower = _query.toLowerCase();
      return titleLower.contains(searchLower);
    }).toList();

    setState(() {
      this._query = _query;
      this._contents = _contents;
    });
  }

  ///Search Widget
  Widget buildSearch() => SearchWidget(
        text: _query,
        hintText: 'Judul Content',
        onChanged: searchData,
      );

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
