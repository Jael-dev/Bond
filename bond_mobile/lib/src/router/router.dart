import '../screens/screens.dart';
import 'package:auto_route/auto_route.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
   AutoRoute(page: Home, initial: true, children: [
      AutoRoute(page: HomeSub, path: 'home_sub'),
      AutoRoute(page: Messages, path: 'message'),
      AutoRoute(page: Songs, path: 'songs'),
      AutoRoute(page: Contacts, path: 'contacts'),
    ]),
    
])



class $AppRouter {}