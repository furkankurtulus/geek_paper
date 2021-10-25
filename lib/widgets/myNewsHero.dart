import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyNewsHero extends StatefulWidget {
  const MyNewsHero({Key? key}) : super(key: key);

  @override
  _MyNewsHeroState createState() => _MyNewsHeroState();
}

class _MyNewsHeroState extends State<MyNewsHero> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lost Ark'),
        centerTitle: true,
      ),
      body: Hero(
        tag: 'myHero',
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: MediaQuery.of(context).size.width / 1,
                height: MediaQuery.of(context).size.height / 4,
                child: Image.asset(
                  "assets/img/LostArk.jpeg",
                  fit: BoxFit.fill,
                )),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Son Dakika haberi, bunu sakın kaçırma hemen okumalısın",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey[800]),
              ),
            ),
            Divider(
              indent: MediaQuery.of(context).size.width / 15,
              endIndent: MediaQuery.of(context).size.width / 15,
              thickness: 0.1,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
