import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/search/presentation/wigdets/custom_search_text_field.dart';
import 'package:bookly/features/search/presentation/wigdets/search_result_listview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSearchTextField(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Text('Search Result',
          style: Styles.textStyle18,
          ),
        ),
        Expanded(
            child: SearchResultListView(),
        ),
      ],
    );
  }
}
