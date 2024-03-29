import 'package:bookly/features/home/data/model/book_model.dart';
import 'package:bookly/features/home/presentaion/view_models/views/widgets/book_details_section.dart';
import 'package:bookly/features/home/presentaion/view_models/views/widgets/custom_book_details_appbar.dart';
import 'package:bookly/features/home/presentaion/view_models/views/widgets/simple_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: SafeArea(
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                BookDetailsSection(book: bookModel,),
                const Expanded(
                    child: SizedBox(
                  height: 49,
                )),
                const SimpleBooksSection(),
                const SizedBox(
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
