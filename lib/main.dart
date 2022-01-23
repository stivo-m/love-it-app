import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:love_it_app/application/redux/states/app_state.dart';
import 'package:love_it_app/presentation/router/router_generator.dart';
import 'package:love_it_app/presentation/router/routes.dart';
import 'package:love_it_app/presentation/theme/themes.dart';

void main() async {
  final Store<AppState> store = Store<AppState>(
    initialState: AppState.initial(),
  );

  // SharedPreferences preferences = await SharedPreferences.getInstance();
  // final String? _token = await preferences.getString(apiToken);

  // if (_token != null) {
  //   await store.dispatch(
  //     UpdateAuthStateAction(token: _token),
  //   );
  // }
  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.store}) : super(key: key);
  final Store<AppState> store;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Love It App',
        theme: AppTheme.lightTheme(),
        darkTheme: AppTheme.darkTheme(),
        themeMode: store.state.themeState!.themeMode,
        onGenerateRoute: generateRoute,
        initialRoute: store.state.authState!.token != null
            ? AppRoutes.loginRoute
            : AppRoutes.homePage,
      ),
    );
  }
}
