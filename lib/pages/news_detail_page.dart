import 'package:flutter/material.dart';
import 'package:flutter_mobile_app/data/news_data.dart';
import 'package:flutter_mobile_app/service/HttpService.dart';

class NewsDetailPage extends StatefulWidget {
  final HttpService httpService = HttpService();
  final NewsDataItem data;
  NewsDetailPage({Key? key, required this.data}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _NewsDetailPageState();
  }
}

class _NewsDetailPageState extends State<NewsDetailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Scaffold(
            body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    widget.data.imageUrl,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        Text(
                          widget.data.time,
                          style: const TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(children: [
                          const Icon(Icons.person),
                          Text(
                            widget.data.author,
                            style: const TextStyle(fontSize: 12),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(Icons.date_range),
                          Text(
                            widget.data.date,
                            style: const TextStyle(fontSize: 12),
                          ),
                        ]),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          widget.data.content,
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            )
          ],
        )),
      ),
    );
  }
}
