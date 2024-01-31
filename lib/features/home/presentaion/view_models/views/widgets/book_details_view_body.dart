import 'package:bookly/features/home/presentaion/view_models/views/widgets/book_details_section.dart';
import 'package:bookly/features/home/presentaion/view_models/views/widgets/custom_book_details_appbar.dart';
import 'package:bookly/features/home/presentaion/view_models/views/widgets/simple_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: SafeArea(
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                Expanded(
                    child: SizedBox(
                  height: 49,
                )),
                SimpleBooksSection(),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
