import 'package:bookly/features/home/data/model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'simple_books_state.dart';

class SimpleBooksCubit extends Cubit<SimpleBooksState> {
  SimpleBooksCubit(this.homeRepo) : super(SimpleBooksInitial());


  final HomeRepo homeRepo;

  Future<void> fetchSimpleBooks({required String category})  async{
    emit(SimpleBooksLoading());
    var result = await homeRepo.fetchSimpleBooks(category: category);

    result.fold(
            (faliure) {
          emit(SimpleBooksFailure(faliure.errMessage));
        },
            (books) {
          emit(SimpleBooksSuccess(books));
        });
  }
}
