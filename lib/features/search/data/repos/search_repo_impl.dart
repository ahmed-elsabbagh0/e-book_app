import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/model/book_model.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo{

   ApiService apiService;
   SearchRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> getBookBySearch(String search) async{


    try {
      var result = await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&Sorting=relevance&q=subject:$search' );
      List<BookModel> books = [];
      for(var item in result["items"]) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
          print(e);
        }
      }

      return right(books);
    } catch (e) {
      if(e is DioException){
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }


  }
  
}