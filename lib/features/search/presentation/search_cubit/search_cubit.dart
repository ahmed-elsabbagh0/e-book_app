
import 'package:bookly/features/home/data/model/book_model.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());

  static SearchCubit get(context) => BlocProvider.of(context);

  SearchRepo searchRepo;
  List<BookModel> books = [];

  Future<void> getBySearch({String search=''}) async{
    emit(SearchLoading());


    var result = await searchRepo.getBookBySearch(search);
    result.fold((l) {
      books = [];
      emit(SearchFailure(l.errMessage));
    }, (book) {
      books = book;
      emit(SearchSuccess(books));
    }

    );
  }

}
