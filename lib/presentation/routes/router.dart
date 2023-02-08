import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_tutorial/presentation/pages/bottom_tab/bottom_tab_page.dart';
import 'package:go_router_tutorial/presentation/pages/second/second_page.dart';
import 'package:go_router_tutorial/presentation/pages/first/first_page.dart';
import 'package:go_router_tutorial/presentation/pages/fourth/fourth_page.dart';
import 'package:go_router_tutorial/presentation/pages/fifth/fifth_page.dart';
import 'package:go_router_tutorial/presentation/pages/third/third_page.dart';
import 'package:page_transition/page_transition.dart';

class AppRouter {
  static final GlobalKey<NavigatorState> _rootNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'root');
  static final GlobalKey<NavigatorState> _shellNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'shell');

  final BotToastNavigatorObserver botToastNavigatorObserver = BotToastNavigatorObserver();

  late final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    observers: [botToastNavigatorObserver],
    initialLocation: "/",
    routes: [
      GoRoute(
        name: "/",
        path: "/",
        pageBuilder: (context, state) => CustomTransitionPage(
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return PageTransition(child: child, type: PageTransitionType.fade).child;
          },
          child: const FirstPage(),
        ),
      ),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        pageBuilder: (context, state, child) {
          return CustomTransitionPage(
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return PageTransition(child: child, type: PageTransitionType.fade).child;
            },
            child: BottomTabPage(child: child),
          );
        },
        routes: [
          GoRoute(
            name: "third_page",
            path: "/third_page",
            pageBuilder: (context, state) => CustomTransitionPage(
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                return PageTransition(child: child, type: PageTransitionType.fade).child;
              },
              child: const ThirdPage(),
            ),
          ),
          GoRoute(
            name: "fourth_page",
            path: "/fourth_page",
            pageBuilder: (context, state) {
              final String title = state.extra as String;

              return CustomTransitionPage(
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  return PageTransition(child: child, type: PageTransitionType.fade).child;
                },
                child: FourthPage(title: title),
              );
            },
          ),
          GoRoute(
            name: "fifth_page",
            path: '/fifth_page',
            pageBuilder: (context, state) {
              return CustomTransitionPage(
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  return PageTransition(child: child, type: PageTransitionType.fade).child;
                },
                child: const FifthPage(),
              );
            },
          ),
        ],
      ),
      GoRoute(
        name: "second_page",
        path: "/second_page",
        pageBuilder: (context, state) => CustomTransitionPage(
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return PageTransition(child: child, type: PageTransitionType.fade).child;
          },
          child: const SecondPage(),
        ),
      ),
    ],
  );
}
