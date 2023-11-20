import 'package:bookly/Core/utils/app_route.dart';
import 'package:bookly/Features/home/data/models/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../Core/widget/style.dart';
import 'book_ratting.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key,
    required this.item,
    required this.imageUrl,
  });

  final String imageUrl;
  final Items item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: item);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: AspectRatio(
                aspectRatio: 2.6 / 4,
                child: CachedNetworkImage(
                  fit: BoxFit.fill,
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                  imageUrl: item.volumeInfo?.imageLinks?.smallThumbnail ?? '',
                  errorWidget: (context, url, error) => const Icon(
                    Icons.error,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      item.volumeInfo!.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Style.textStyle20.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    item.volumeInfo!.authors![0],
                    style: Style.textStyle14.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Style.textStyle20.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      BookRatting(
                        count: item.volumeInfo?.ratingsCount ?? 0,
                        rating: item.volumeInfo?.averageRating ?? 0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
