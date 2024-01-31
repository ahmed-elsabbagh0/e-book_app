
import 'package:bookly/features/home/presentaion/view_models/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimpleBooksListView extends StatelessWidget {
  const SimpleBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.15,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index)
            {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: CustomBookImage(
                    imageUrl: 'https://upload.wikimedia.org/wikipedia/en/6/6c/Batman_Arkham_Knight_Cover_Art.jpg'
                ),
              );
            }),
      ),
    );
  }
}
