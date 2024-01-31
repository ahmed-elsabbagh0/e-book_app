
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentaion/view_models/views/widgets/book_listview.dart';
import 'package:bookly/features/home/presentaion/view_models/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentaion/view_models/views/widgets/featured_books_list.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                FeaturedBooksListView(),
                Padding(
                  padding: EdgeInsets.only(left: 30, top: 40, bottom: 20),
                  child: Text('New Books', style: Styles.textStyle18,),
                ),
                BookListView(),

              ],
            ),
          ),

          SliverToBoxAdapter(
            child: BookListView(),
          ),
        ],
      ),
    );
  }

}





