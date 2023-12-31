import 'package:news_app/models/categories_news_model.dart';
import 'package:news_app/models/news_channel_headline_model.dart';
import 'package:news_app/repository/news_repository.dart';

class NewsViewModel {
  final _rep = NewsRepository();

  Future<NewsChannelHeadlines> fetchedNewsChannelHeadlineApi(
      {required String channelName}) async {
    final response =
        await _rep.fetchedNewsChannelHeadlineApi(newsChannel: channelName);
    return response;
  }

  Future<CategoriesNewsModel> fetchedCategoryNewsApi({required String category}) async {
    final response = await _rep.fetchedCategoriesNewsApi(category: category);
    return response;
  }
}
