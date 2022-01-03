import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:language1/pages/home_page.dart';
// more and more

// more

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  
  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale('en', 'EN'), Locale('fr', 'FR'),
        Locale('ru', 'RU'), Locale('uz', 'UZ')],
      path: 'assets/language', // <-- change the path of the translation files 
      fallbackLocale: Locale('en', 'EN'),
      child: MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: Home()
    );
  }
}
