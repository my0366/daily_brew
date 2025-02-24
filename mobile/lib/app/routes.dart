import 'package:daily_brew/pages/auth/auth_page.dart';
import 'package:daily_brew/pages/home/home_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: "/", // 기본 경로 설정
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => AuthPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => HomePage(),
    ),
  ],
);
