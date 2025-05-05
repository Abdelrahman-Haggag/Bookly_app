import 'package:bookly/Features/home/data/books/books.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
  Future<Either<String,List<Books>>> fetchAllBooks();
  Future<Either<String,List<Books>>> fetchBestSellerBooks();
}