import 'package:flutter/material.dart';
import 'package:flutter_mobile_app/data/news_data.dart';
import 'package:flutter_mobile_app/service/HttpService.dart';
import 'package:flutter_mobile_app/widgets/news_row_widget.dart';

class NewsListPage extends StatelessWidget {
  final HttpService httpService = HttpService();

  NewsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      appBar: AppBar(
        title: const Text("News Api Call"),
        backgroundColor: Colors.black12,
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisSize: MainAxisSize.max, children: [
          FutureBuilder<List<NewsDataItem>>(
            future: HttpService.getNewListData(),
            builder: (BuildContext context, snapshot) {
              if (snapshot.hasData) {
                List<NewsDataItem> dataItem = snapshot.data!;

                return ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: dataItem.length,
                  itemBuilder: (context, index) {
                    return NewsRowWidget(data: dataItem[index]);
                  },
                );
              } else if (snapshot.hasError) {
                return const Center(child: CircularProgressIndicator());
              }
              return const Center(child: CircularProgressIndicator());
            },
          ),
        ]),
      ),
    );
  }
}
