import 'package:flutter/material.dart';
import 'package:ny_times_articles/core/viewmodels/article_viewmodel.dart';
import 'package:ny_times_articles/core/viewmodels/base/viewmodel.provider.dart';
import 'package:ny_times_articles/presentation/view/base/base.view.dart';
import 'package:ny_times_articles/presentation/widgets/article_list_item.dart';

class ArticleView extends StatelessWidget {
  const ArticleView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<ArticleViewModel>(
      model: ArticleViewModel(context: context),
      provideMode: ProvideMode.select,
      builder: (model) {
        return ScreenBaseWidget(
          appBarWidget: AppBar(
            title: const Text(
              'Articles',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: ListView.builder(
            itemBuilder: (context, index) => ArticleListItem(
              article: model.articles[index],
              onTap: () {
                model.navigateToArticleDetailView(model.articles[index]);
              },
            ),
            itemCount: model.articles.length,
          ),
        );
      },
    );
  }
}
