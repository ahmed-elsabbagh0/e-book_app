
import 'package:bookly/features/home/data/model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());


  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks()  async{
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold(
            (faliure) {
              emit(FeaturedBooksFailure(faliure.errMessage));
    },
            (books) {
              emit(FeaturedBooksSuccess(books));
    });
  }
}
