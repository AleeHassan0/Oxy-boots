import 'package:flutter/material.dart';
import 'package:oxy_boots/onboarding%20screen/onboarding_1.dart';
import 'package:oxy_boots/provider/theme_changer_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeChangerProvider()),
      ],
      child: Builder(builder: (BuildContext context) {
        final themeChanger = Provider.of<ThemeChangerProvider>(context);
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            themeMode: themeChanger.themeMode,
            theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
                brightness: Brightness.light),
            darkTheme: ThemeData(brightness: Brightness.dark),
            home: const OnBoarding1());
      }),
    );
  }
}
