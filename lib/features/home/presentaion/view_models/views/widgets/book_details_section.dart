
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/model/book_model.dart';
import 'package:bookly/features/home/presentaion/view_models/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentaion/view_models/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book, });

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.28, vertical: 30),
          child: CustomBookImage(
            imageUrl:
              book.volumeInfo.imageLinks?.thumbnail ?? ''
          ),
        ),
        Text(book.volumeInfo.title!,
            style: Styles.textStyle30.copyWith(
              fontFamily: kImFellFrench,
              height: 1.2,
            ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 25,),
        Opacity(
          opacity: 0.7,
          child: Text(book.volumeInfo.authors?[0] ?? '',
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
              ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 20,),
        Text(book.volumeInfo.publishedDate  ?? '2023'),
        const SizedBox(height: 37,),
        BooksAction(bookModel: book),
      ],
    );
  }
}
