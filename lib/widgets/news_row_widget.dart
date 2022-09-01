import 'package:flutter/material.dart';
import 'package:flutter_mobile_app/data/news_data.dart';
import 'package:flutter_mobile_app/pages/news_detail_page.dart';

class NewsRowWidget extends StatelessWidget {
  final NewsDataItem data;
  const NewsRowWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => NewsDetailPage(data: data)));
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
          elevation: 2,
          margin: const EdgeInsets.only(bottom: 10),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(data.imageUrl),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(8.0)),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.title,
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Icon(Icons.person),
                      Text(
                        data.author,
                        style: const TextStyle(fontSize: 12),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(Icons.date_range),
                      Expanded(
                        child: Text(
                          data.date,
                          style: const TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  )
                ],
              ))
            ]),
          ),
        ),
      ),
    );
  }
}
