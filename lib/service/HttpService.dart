import 'dart:convert';

import 'package:flutter_mobile_app/data/news_data.dart';
import 'package:http/http.dart';

class HttpService {
  static Future<List<NewsDataItem>> getNewListData() async {
    const url = "https://inshorts.deta.dev/news?category=all";

    Response response = await get(Uri.parse(url));

    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['data'];

      return result.map((e) => NewsDataItem.fromJson(e)).toList();
    } else {
      throw Exception("Something went wrong");
    }
  }
}
