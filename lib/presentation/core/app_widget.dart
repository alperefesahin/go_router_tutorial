import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:go_router_tutorial/presentation/routes/router.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    final botToastBuilder = BotToastInit();

    return MaterialApp.router(
      title: 'Go Router Tutorial',
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.router,
      builder: (context, child) {
        child = botToastBuilder(context, child);

        return child;
      },
    );
  }
}
