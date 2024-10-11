import 'package:flutter/material.dart';
import 'package:oxy_boots/provider/theme_changer_provider.dart';
import 'package:provider/provider.dart';

class ThemeOfApp extends StatefulWidget {
  const ThemeOfApp({super.key});

  @override
  State<ThemeOfApp> createState() => _ThemeState();
}

class _ThemeState extends State<ThemeOfApp> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChangerProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme'),
      ),
      body: Column(
        children: [
          RadioListTile(
              title: const Text('Light Mode'),
              value: ThemeMode.light,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setThemeMode),
          RadioListTile(
              title: const Text('Dark Mode'),
              value: ThemeMode.dark,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setThemeMode)
        ],
      ),
    );
  }
}
