import 'package:flutter/material.dart';
import 'package:flutter_mobile_app/data/news_data.dart';
import 'package:flutter_mobile_app/service/HttpService.dart';
import 'package:flutter_mobile_app/pages/longest_string_widgets.dart';
import 'package:flutter_mobile_app/pages/news_list_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LongestStringWidgets()));
                },
                child: const Text(
                  "Code 1",
                  style: TextStyle(fontSize: 16),
                )),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NewsListPage()));
                },
                child: const Text(
                  "Code 2",
                  style: TextStyle(fontSize: 16),
                ))
          ],
        ),
      ),
    );
  }
}
