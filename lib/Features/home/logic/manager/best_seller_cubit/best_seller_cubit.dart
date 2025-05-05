import 'package:bookly/Features/home/data/repo/home_repo.dart';
import 'package:bookly/Features/home/logic/manager/best_seller_cubit/best_seller_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerCubit extends Cubit<BestSellerState>{
  final HomeRepo homeRepo;
  BestSellerCubit(this.homeRepo):super(BestSellerInitail());
}