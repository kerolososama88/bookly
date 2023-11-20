import 'package:bookly/Core/utils/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}
class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    navigateHome();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.network(
          'https://img.freepik.com/free-vector/gradient-book-logo-with-slogan_23-2148832096.jpg?w=826&t=st=1696870943~exp=1696871543~hmac=a602d9cda3535748ae41f933d26a097eb8d3f61f710650c911bedee811970f12',
        ),
      ),
    );
  }
  void navigateHome(){
    Future.delayed(
        const Duration(seconds: 2),
            (){
              GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
        });
  }
}
