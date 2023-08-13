import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/models/news_channel_headline_model.dart';

class NewsRepository {
  Future<NewsChannelHeadlines> fetchedNewsChannelHeadlineApi({required String newsChannel}) async {
    String url =
        "https://newsapi.org/v2/top-headlines?sources=$newsChannel&apiKey=b7a147696a4a4aaabd7857b1e3650a67";

    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return NewsChannelHeadlines.fromJson(body);
    }
    throw Exception("Error");
  }
}
