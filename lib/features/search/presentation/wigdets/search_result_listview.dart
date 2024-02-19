
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/features/home/presentaion/view_models/views/widgets/book_listview_item.dart';
import 'package:bookly/features/search/presentation/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {

        if (state is SearchSuccess) {
          if (SearchCubit.get(context).books == []) {
            return const Center(
                child: Text(
                  "type to search",
                  style: Styles.textStyle18,
                ));

          } else {
            for (int i = 0 ; i<state.books.length; i++ ){
              print(state.books[i].volumeInfo.publishedDate);
            }
            return ListView.separated(
              separatorBuilder: (context, index) =>  Gap(20.h),
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: NewestBooksItem(bookModel: state.books[index]),
                );
              },
            );
          }

        } else if(state is SearchFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const Center(child: Text("Type TO Search",style: Styles.textStyle18,));
        }
      },
    );
  }
}
