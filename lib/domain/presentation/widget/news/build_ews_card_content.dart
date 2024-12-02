import 'package:flutter/material.dart';
import 'package:news_app/constant/style.dart';
import 'package:news_app/data/models/articlemodel.dart';
import 'package:news_app/domain/presentation/widget/news/widgets/build_image.dart';

class BuildNewsCardContent extends StatelessWidget {
  const BuildNewsCardContent({
    super.key,
    required this.articlemodel,
  });

  final Articlemodel articlemodel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildImage(articlemodel: articlemodel),
        Text(
          articlemodel.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyle.titleNewsCard,
        ),
        const SizedBox(
          height: 0.5,
        ),
        Text(
          articlemodel.description,
          maxLines: 2,
          overflow: TextOverflow.fade,
          style: AppTextStyle.descriptionNewsCard,
        ),
      ],
    );
  }
}
