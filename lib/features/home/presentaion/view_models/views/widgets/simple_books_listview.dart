import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentaion/manager/simple_books_cubit/simple_books_cubit.dart';
import 'package:bookly/features/home/presentaion/view_models/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SimpleBooksListView extends StatelessWidget {
  const SimpleBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimpleBooksCubit, SimpleBooksState>(
      builder: (context, state) {
        if (state is SimpleBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.15,
              child: ListView.builder(
                itemCount: state.books.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: GestureDetector(
                        onTap: () {
                          GoRouter.of(context).push(
                            AppRouter.kBookDetailsView,
                            extra: state.books[index],
                          );
                        },
                        child: CustomBookImage(
                            imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail ?? '',
                        ),
                      ),
                    );
                  }),
            ),
          );
        } else if (state is SimpleBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);

        } else {
          return const CustomLoadingIndicator();
        }
        },

    );
  }
}
