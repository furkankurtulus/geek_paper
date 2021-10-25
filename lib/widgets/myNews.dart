import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:geek_paper/widgets/myNewsHero.dart';

class myNews extends StatefulWidget {
  const myNews({Key? key}) : super(key: key);

  @override
  _myNewsState createState() => _myNewsState();
}

class _myNewsState extends State<myNews> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            itemCount: 1,
            separatorBuilder: (BuildContext context, int index) {
              // return Container(
              //   // width: MediaQuery.of(context).size.width / 15,
              //   width: MediaQuery.of(context).size.width / 15,
              //   height: 0,
              //   child: Divider(
              //     indent: MediaQuery.of(context).size.width / 15,
              //     endIndent: MediaQuery.of(context).size.width / 15,
              //     color: Colors.black,
              //     thickness: 0.0,
              //   ),
              // );
              return Container();
            },
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 50,
                            top: MediaQuery.of(context).size.height / 50,
                          ),
                          child: Column(
                            children: [
                              Hero(
                                tag: 'myHero',
                                child: Container(
                                    height: MediaQuery.of(context).size.height / 9,
                                    width: MediaQuery.of(context).size.width / 4,
                                    child: Image.asset(
                                      "assets/img/LostArk.jpeg",
                                    )),
                              ),
                              Text(
                                "Lost Ark",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 1.5,
                              child: RichText(
                                maxLines: 3,
                                text: TextSpan(
                                  style: DefaultTextStyle.of(context).style,
                                  children: const <TextSpan>[
                                    TextSpan(text: 'L', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: 'orem Ipsum! This Is Lost Ark News, Lorem Ipsum,This is a new,You Can Click Right Here, 10 March 2022q',
                                        style: TextStyle(
                                          fontSize: 12,
                                          overflow: TextOverflow.ellipsis,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MyNewsHero(),
                                    ));
                              },
                              child: Text(
                                'Read More...',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.blue,
                                  fontSize: 12,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
