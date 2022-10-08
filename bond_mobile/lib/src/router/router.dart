import '../screens/screens.dart';
import 'package:auto_route/auto_route.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
   AutoRoute(page: Home, initial: true, children: [
      AutoRoute(page: HomePage, path: 'home_page'),
      AutoRoute(page: Messages, path: 'message'),
      AutoRoute(page: Songs, path: 'songs'),
      AutoRoute(page: Contacts, path: 'contacts'),
    ]),
    
])



class $AppRouter {}