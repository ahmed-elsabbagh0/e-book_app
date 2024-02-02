import 'package:bookly/features/home/data/model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());


  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks()  async{
    var result = await homeRepo.fetchNewestBooks();

    result.fold(
            (faliure) {
          emit(NewestBooksFailure(faliure.errMessage));
        },
            (books) {
          emit(NewestBooksSuccess(books));
        });
  }
}

