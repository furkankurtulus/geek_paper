import 'package:flutter/material.dart';
import 'package:bottom_bar/bottom_bar.dart';
import 'package:geek_paper/controller/myNews_controller.dart';
import 'package:geek_paper/widgets/myNews.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  MyNewsController _mnController = Get.put(MyNewsController());
  var currentPage = 0;
  final _pageController = PageController(initialPage: 0);
  @override
  void initState() {
    currentPage = _mnController.currentPage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.exit_to_app_sharp,
              color: Colors.black,
            )),
        title: Text(
          "Game Paper",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[400],
      ),
      body: PageView(
        controller: _pageController,
        children: [
          myNews(),
          myNews(),
          myNews(),
          // orderListArea(),
        ],
        onPageChanged: (index) {
          setState(() => _mnController.currentPage = index);
        },
      ),
      bottomNavigationBar: BottomBar(
        backgroundColor: Colors.grey[300],
        selectedIndex: _mnController.currentPage,
        onTap: (int index) {
          _pageController.jumpToPage(index);
          setState(() => _mnController.currentPage = index);
        },
        items: <BottomBarItem>[
          BottomBarItem(
            icon: Icon(Icons.home),
            title: Text('myNews'.tr),
            activeColor: Colors.blue,
          ),
          BottomBarItem(
            icon: Icon(Icons.search),
            title: Text('search'.tr),
            activeColor: Colors.red,
            darkActiveColor: Colors.red.shade400,
          ),
          BottomBarItem(
            icon: Icon(Icons.format_list_bulleted),
            title: Text('profile'.tr),
            activeColor: Colors.greenAccent.shade700,
            darkActiveColor: Colors.greenAccent.shade400,
          ),
        ],
      ),
    );
  }
}
