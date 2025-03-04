import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:oncoknow/Screen/about_us.dart';
import 'package:oncoknow/Screen/contact_us.dart';
// import 'package:oncoknow/Screen/profile_page.dart';
import 'package:oncoknow/Screen/sign_in.dart';
import 'package:oncoknow/Screen/sign_up.dart';
import 'package:oncoknow/Screen/spash_screen.dart';
import 'package:oncoknow/components/slider.dart';
import 'package:oncoknow/theme/theme_provider.dart';
import 'package:provider/provider.dart';

import 'Screen/edit_screen.dart';
// import 'components/slider.dart';
//
// void main() {
//   runApp(
//     ChangeNotifierProvider(
//       create: (context) => ThemeProvider(),
//       create: (context) => Shop(),
//       child: const MyApp(),
//     ),
//   );
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MultiProvider(
      // Use MultiProvider for multiple providers
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => Shop()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MySplashScreen(),
      theme: Provider.of<ThemeProvider>(context).themeData,
      // darkTheme: darkMode,

      routes: {
        '/spash_screen': (context) => const MySplashScreen(),
        '/sign_in': (context) => const SignIn(),
        '/sign_up': (context) => const SignUp(),
        '/about_us': (context) => const AboutUs(),
        '/contact_us': (context) => const ContactUs(),
        '/profile_page': (context) => const EditAccountScreen(),
      },
    );
  }
}
