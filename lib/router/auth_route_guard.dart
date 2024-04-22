import 'package:auto_route/auto_route.dart';
import 'package:baseapp/router/app_router.dart';

class AuthGuard extends AutoRouteGuard {

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    // the navigation is paused until resolver.next() is called with either
    // true to resume/continue navigation or false to abort navigation
    if(false) {
      // if user is authenticated we continue
      resolver.next(true);
    } else {
      // we redirect the user to our login page
      // tip: use resolver.redirect to have the redirected route
      // automatically removed from the stack when the resolver is completed
      resolver.redirect(
          const AuthRoute(
          //   onResult: (success) {
          //   // if success == true the navigation will be resumed
          //   // else it will be aborted
          //   resolver.next(success);
          // },
          )
      );
    }
  }
}