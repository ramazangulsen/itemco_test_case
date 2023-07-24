import 'package:flutter/material.dart';
import 'package:itemco_test_case/core/helpers/size.extension.dart';
import 'package:itemco_test_case/core/models/article_model.dart';
import 'package:itemco_test_case/presentation/view/base/base.view.dart';
import 'package:itemco_test_case/presentation/widgets/appbar_Back_icon.dart';

class ArticleDetailView extends StatelessWidget {
  final Article article;
  const ArticleDetailView({
    Key? key,
    required this.article,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenBaseWidget(
      appBarWidget: AppBar(
          title: const Text(
            'Article Detail',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const AppBarBackIcon()),
      body: Column(
        children: [
          Image.network(
            article.media[0].mediaMetadata[0].url,
            fit: BoxFit.cover,
            width: context.fractionalWidth(1),
            height: context.fractionalHeight(0.3),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              article.title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              article.abstract,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              article.byline,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              article.publishedDate,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
