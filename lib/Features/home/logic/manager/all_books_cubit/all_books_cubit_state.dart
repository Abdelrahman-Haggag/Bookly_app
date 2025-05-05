import 'package:bookly/Features/home/data/books/books.dart';

abstract class AllBooksCubitstate{}

final class AllBooksCubitInitial extends AllBooksCubitstate{}
final class AllBooksCubitLoading extends AllBooksCubitstate{}
final class AllBooksCubitSuccess extends AllBooksCubitstate{
  final List<Books> books;

  AllBooksCubitSuccess({required this.books});

}
final class AllBooksCubitError extends AllBooksCubitstate{
  final String Error;

  AllBooksCubitError({required this.Error});
}