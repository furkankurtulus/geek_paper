import 'package:geek_paper/models/myNews.dart';
import 'package:get/get.dart';

class MyNewsController extends GetxController {
  int currentPage = 0;
  late Future<List<news>> myNewsList;
}
