
import 'package:bookly/features/home/presentaion/view_models/views/widgets/book_listview_item.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          // child: BestSellerItem(),
          child: Text('data'),
        );
      },
    );
  }
}
