import 'package:flutter/material.dart';
import 'package:ny_times_articles/core/models/app_icons.model.dart';
import 'package:ny_times_articles/core/models/article_model.dart';

class ArticleListItem extends StatelessWidget {
  final Article article;
  final Function() onTap;
  const ArticleListItem({
    super.key,
    required this.article,
    required this.onTap,
  });

  getArticleImage(Article article) {
    if (article.media.isNotEmpty) {
      if (article.media[0].mediaMetadata.isNotEmpty) {
        return article.media[0].mediaMetadata[0].url;
      }
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                getArticleImage(article),
                errorBuilder: (context, error, stackTrace) {
                  return const SizedBox(
                    width: 75,
                    height: 75,
                    child: Icon(
                      Icons.error,
                      color: Colors.red,
                    ),
                  );
                },
                width: 75,
                height: 75,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    article.title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    article.byline,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Row(
                    children: [
                      Image(
                        image: AppIcons.calendarIcon,
                        width: 15,
                        height: 15,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        article.publishedDate,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
