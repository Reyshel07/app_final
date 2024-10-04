import 'package:app_final/config/go_router.dart';
import 'package:app_final/presentation/providers/noti_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create:(_) => ProviderNoti()
        )
      ],
      child: MaterialApp.router(
        title: 'App1',
        routerConfig: AppRouter.appRouter,
      )
    );
  }
}
