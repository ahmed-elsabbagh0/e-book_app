part of 'search_cubit.dart';

@immutable
abstract class SearchState {}

class SearchInitial extends SearchState {}
class SearchLoading extends SearchState {}
class SearchSuccess extends SearchState {
 List<BookModel> books ;
 SearchSuccess(this.books);
}
class SearchFailure extends SearchState {
 String errMessage;
  SearchFailure(this.errMessage);
}