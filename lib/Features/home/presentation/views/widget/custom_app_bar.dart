import 'package:bookly/Core/utils/app_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(
          top:40.0 ,
        bottom:20.0 ,
      ),
      child: Row(
        children: [
        Image.network(
          'https://img.freepik.com/free-vector/gradient-book-logo-with-slogan_23-2148832096.jpg?w=826&t=st=1696878432~exp=1696879032~hmac=e9406540a5cd35a85145959bb997bc451d4c90b2062119ff8eb4d76bb652334d',
          height: 25,
          width: 25,
        ),
          const Spacer(),
          IconButton(
              onPressed: (){
                GoRouter.of(context).push(AppRouter.kSearchView);
              },
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 22.0,
              ),
          ),
        ],
      ),
    );
  }
}
