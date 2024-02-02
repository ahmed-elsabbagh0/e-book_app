part of 'simple_books_cubit.dart';

@immutable
abstract class SimpleBooksState {}

class SimpleBooksInitial extends SimpleBooksState {}
class SimpleBooksLoading extends SimpleBooksState {}
class SimpleBooksFailure extends SimpleBooksState {
  final String errMessage;

  SimpleBooksFailure(this.errMessage);
}
class SimpleBooksSuccess extends SimpleBooksState {
  final List<BookModel> books ;

  SimpleBooksSuccess(this.books);
}
