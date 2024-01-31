
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentaion/view_models/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentaion/view_models/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentaion/view_models/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.28, vertical: 30),
          child: const CustomBookImage(
            imageUrl:
            'https://upload.wikimedia.org/wikipedia/en/6/6c/Batman_Arkham_Knight_Cover_Art.jpg',
          ),
        ),
        Text('The Jungle Book',
            style: Styles.textStyle30.copyWith(
              fontFamily: kImFellFrench,
            )),
        const SizedBox(height: 25,),
        Opacity(
          opacity: 0.7,
          child: Text('Rudyard Kipling',
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
              )),
        ),
        const SizedBox(height: 20,),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center,),
        const SizedBox(height: 37,),
        const BooksAction(),
      ],
    );
  }
}