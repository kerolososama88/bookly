import 'package:bookly/Core/widget/style.dart';
import 'package:bookly/Features/home/presentation/views/widget/best_seller_list_view.dart';
import 'package:bookly/Features/home/presentation/views/widget/custom_app_bar.dart';
import 'package:bookly/Features/home/presentation/views/widget/featured_books_list.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 const Padding(
                   padding: EdgeInsets.symmetric(horizontal: 30.0),
                   child: CustomAppBar(),
                 ),
                 const FeaturedBooksList(),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    'Best Seller',
                    style: Style.textStyle18.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: BestSellerListView(),
          ),
        ),

      ],
    );
  }
}






