
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentaion/view_models/views/widgets/simple_books_listview.dart';
import 'package:flutter/material.dart';

class SimpleBooksSection extends StatelessWidget {
  const SimpleBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text('You Can Also Like',
            style: Styles.textStyle14.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w500
            ),
          ),
        ),

        const SizedBox(height: 16,),
        const SimpleBooksListView(),
      ],
    );
  }
}
