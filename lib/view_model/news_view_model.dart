import 'package:news_app/models/news_channel_headline_model.dart';
import 'package:news_app/repository/news_repository.dart';

class NewsViewModel {
  final _rep = NewsRepository();

  Future<NewsChannelHeadlines> fetchedNewsChannelHeadlineApi() async {
    final response = await _rep.fetchedNewsChannelHeadlineApi();
    return response;
  }
}
