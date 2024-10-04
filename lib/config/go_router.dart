import 'package:app_final/presentation/screen/login/login.dart';
import 'package:app_final/presentation/screen/noticias/noticias.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final appRouter = GoRouter(
    initialLocation: LoginScreen.paht,
    routes: [
      GoRoute(
        path: LoginScreen.paht,
        name: LoginScreen.name,
        builder: (context, state) => LoginScreen(),
      ),
      GoRoute(
        path: NotiScreen.path,
        name: NotiScreen.name,
        builder: (context, state) => const NotiScreen(),)
    ]
  );
}