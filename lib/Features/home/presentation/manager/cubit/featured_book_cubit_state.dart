part of 'featured_book_cubit_cubit.dart';

@immutable
sealed class FeaturedBookCubitState {}

final class FeaturedBookCubitInitial extends FeaturedBookCubitState {}

final class FeaturedBookCubitLoading extends FeaturedBookCubitState {}

final class FeaturedBookCubitFailure extends FeaturedBookCubitState {
  final String errMesasge;

  FeaturedBookCubitFailure(this.errMesasge);
}

final class FeaturedBookCubitSuccess extends FeaturedBookCubitState {
  final List<BookModel> books;

  FeaturedBookCubitSuccess(this.books);
}
