import 'package:flutter/material.dart';
import 'package:list_view/pages/home_page.dart';
import 'package:list_view/provider/list_provider.dart';

import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => ListProvider())],
        child: MaterialApp(
          title: 'Material App',
          initialRoute: '/',
          routes: {'/': (_) => const HomePage()},
        ));
  }
}
