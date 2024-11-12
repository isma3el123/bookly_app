import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/repo/home_repo.dart';
import 'package:meta/meta.dart';

import '../../../data/model/book_model.dart';

part 'featured_book_cubit_state.dart';

class FeaturedBookCubitCubit extends Cubit<FeaturedBookCubitState> {
  FeaturedBookCubitCubit(this.homeRepo) : super(FeaturedBookCubitInitial());
  final HomeRepo homeRepo;
  Future<void> fetchRecentBooks() async {
    var result = await homeRepo.fetchRecentBooks();
    result.fold((failure) {
      emit(FeaturedBookCubitFailure(failure.erMassage));
    }, (books) {
      emit(FeaturedBookCubitSuccess(books));
    });
  }
}
