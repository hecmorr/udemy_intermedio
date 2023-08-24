import 'package:go_router/go_router.dart';
import 'package:udemy_app/pages/home_page.dart';

final appRouter  = GoRouter(
  //initialLocation: '/'
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),)
  ], 
  );
  