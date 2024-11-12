import 'package:bookly_app/Features/home/presentation/manager/cubit/featured_book_cubit_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly_app/core/widget/custom_error.dart';
import 'package:bookly_app/core/widget/custom_loadingindecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBookCubitCubit, FeaturedBookCubitState>(
      builder: (context, state) {
        if (state is FeaturedBookCubitSuccess) {
          return SizedBox(
              height: MediaQuery.of(context).size.height * .3,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: CustomListViewItems(
                        imageUrl: state.books[index].image,
                      ),
                    );
                  }));
        } else if (state is FeaturedBookCubitFailure) {
          return CustomError(
            errMassage: state.errMesasge,
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
