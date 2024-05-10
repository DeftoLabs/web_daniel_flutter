import 'package:flutter/material.dart';
import 'package:flutter_web_danieldefaria/providers/page_provider.dart';
import 'package:flutter_web_danieldefaria/router/router.dart';
import 'package:provider/provider.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(create: (_) => PageProvider()),
      ],
      child: const MyApp(),
      );
  }
}

  


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  void initState() {
    super.initState();
    Flurorouter.configureRoutes();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Daniel De Faria',
      initialRoute: '/home',
      onGenerateRoute: Flurorouter.router.generator,
);
  }
}