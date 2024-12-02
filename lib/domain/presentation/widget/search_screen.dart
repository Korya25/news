import 'package:flutter/material.dart';
import 'package:news_app/constant/style.dart';
import 'package:news_app/domain/presentation/widget/appbar/custom_app_bar.dart';
import 'package:news_app/domain/presentation/widget/news/future_builder_News_list.dart';

class TextFeildSearch extends StatelessWidget {
  const TextFeildSearch({super.key});
  static const String id = 'TextFeildSearch';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 50,
          child: Center(
            child: TextField(
              onSubmitted: (value) {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: CustomAppBar(
                            title: value, titleTextStyle: AppTextStyle.heading),
                      ),
                      body: CustomScrollView(
                        slivers: [
                          FutureBuilderNews(
                            catogray: value,
                          ),
                        ],
                      ),
                    );
                  },
                ));
              },
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: AppTextStyle.hintTextfield,
                border: OutlineInputBorder(
                  borderSide: const BorderSide(),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
