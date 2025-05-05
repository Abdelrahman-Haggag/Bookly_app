import 'package:bookly/Features/home/data/repo/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'all_books_cubit_state.dart';
class AllBooksCubit extends Cubit<AllBooksCubitstate>{
  final HomeRepo homeRepo;
  AllBooksCubit(this.homeRepo) : super(AllBooksCubitInitial());
  getAllBooks()async{
    emit(AllBooksCubitLoading());
    var result =await homeRepo.fetchAllBooks();
    result.fold((error){
      emit(AllBooksCubitError(Error: error));
    }, (books){
      emit(AllBooksCubitSuccess(books: books));
    });
  }
}