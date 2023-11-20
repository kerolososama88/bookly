import 'package:bookly/Core/utils/function/launch_url.dart';
import 'package:bookly/Core/widget/custom_buttom.dart';
import 'package:bookly/Features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.items,});

final Items items;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          const Expanded(
            child: CustomButtom(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              backGroundColor: Colors.white,
              textColor: Colors.black,
              text: 'Free',
            ),
          ),
          Expanded(
            child: CustomButtom(
              onPressed: () async {
                launchCustomer(
                    context,
                    items.volumeInfo?.previewLink??'',
                );
              },
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              backGroundColor: const Color(0xffEF8262),
              textColor: Colors.white,
              text: 'Preview',
            ),
          ),
        ],
      ),
    );
  }
}
