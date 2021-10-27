import 'package:ensiklopedi/model/data.dart';
import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  final Data data;
  const Content({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Content'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/setting');
            },
            icon: const Icon(Icons.settings),
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
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 800) {
            return WebContent(data: data);
          } else {
            return MobileContent(data: data);
          }
        },
      ),
    );
  }
}

class WebContent extends StatelessWidget {
  final Data data;
  const WebContent({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 64,
        ),
        child: Center(
          child: SizedBox(
            width: 1200,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      ClipRRect(
                        child: Image.asset(
                          data.imageAsset,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 32),
                Expanded(
                  child: Card(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Text(
                            data.name,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 30.0,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: <Widget>[
                                  const Icon(Icons.category_outlined),
                                  const SizedBox(width: 8.0),
                                  Text(
                                    data.category,
                                  ),
                                ],
                              ),
                              const FavoriteButton(),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              const Icon(Icons.account_tree_outlined),
                              const SizedBox(width: 8.0),
                              Text(
                                data.type,
                              ),
                            ],
                          ),
                          const SizedBox(height: 8.0),
                          Row(
                            children: <Widget>[
                              const Icon(Icons.location_on_outlined),
                              const SizedBox(width: 8.0),
                              Text(
                                data.location,
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Text(
                              data.description,
                              textAlign: TextAlign.justify,
                              style: const TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MobileContent extends StatelessWidget {
  final Data data;
  const MobileContent({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Image.asset(
              data.imageAsset,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(),
                    FavoriteButton(),
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          margin: const EdgeInsets.only(bottom: 10.0),
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.blue, width: 3.0)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                data.name,
                style: const TextStyle(
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
          padding: const EdgeInsets.only(
            top: 10.0,
            right: 10.0,
            left: 10.0,
          ),
          color: Colors.white12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          const Icon(Icons.category_outlined,
                              color: Color(0xFF6F35A5)),
                          const SizedBox(height: 8.0),
                          Text(data.category,
                              style: const TextStyle(
                                color: Colors.blue,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          const Icon(Icons.account_tree_outlined,
                              color: Color(0xFF6F35A5)),
                          const SizedBox(height: 8.0),
                          Text(data.type,
                              style: const TextStyle(
                                color: Colors.blue,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          const Icon(Icons.location_on_outlined,
                              color: Color(0xFF6F35A5)),
                          const SizedBox(height: 8.0),
                          Text(data.location,
                              style: const TextStyle(
                                color: Colors.blue,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  data.description,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(fontSize: 16.0, color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        _isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          _isFavorite = !_isFavorite;
        });
      },
    );
  }
}
