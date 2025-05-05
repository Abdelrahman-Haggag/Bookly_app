import 'package:bookly/Features/home/data/books/books.dart';
import 'package:bookly/Features/home/data/repo/home_repo.dart';
import 'package:bookly/core/networking/api_service.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo{
  final Apiservices apiservices ;

  HomeRepoImpl({required this.apiservices});

  @override
  Future<Either<String, List<Books>>> fetchAllBooks() async{
    try{
      var data =await apiservices.get(endpoint: "v1/volumes?Filtering=free-ebooks");
      List<Books> books =[];
      for(var item in data["items"]){
        books.add(Books.fromJson(item));
      }
      return right(books);
    }catch(e){
      return left(e.toString());
    }

  }

  @override
  Future<Either<String, List<Books>>> fetchBestSellerBooks()async {
    try{
      var data =await apiservices.get(endpoint: "v1/volumes?Sorting=Sorting");
      List<Books> books =[];
      for(var item in data["items"]){
        books.add(Books.fromJson(item));
      }
      return right(books);
    }catch(e){
      return left(e.toString());
    }
  }

}