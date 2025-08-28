<<<<<<< HEAD
=======
import 'package:firebase_core/firebase_core.dart';
>>>>>>> 0d7df472edadaf38cd27f6c55368a5b786a717ff
import 'package:flutter/material.dart';
import 'package:oncoknow/Screen/about_us.dart';
import 'package:oncoknow/Screen/contact_us.dart';
import 'package:oncoknow/Screen/sign_in.dart';
import 'package:oncoknow/Screen/sign_up.dart';
import 'package:oncoknow/Screen/spash_screen.dart';
import 'package:oncoknow/components/slider.dart';
import 'package:oncoknow/theme/theme_provider.dart';
import 'package:provider/provider.dart';

import 'Screen/edit_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
<<<<<<< HEAD
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => Shop()),
      ],
      child: const MyApp(),
    ),
  );
=======
  runApp(const AppInitializer());
}

class AppInitializer extends StatelessWidget {
  const AppInitializer({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (context) => ThemeProvider()),
              ChangeNotifierProvider(create: (context) => Shop()),
            ],
            child: const MyApp(),
          );
        }
        if (snapshot.hasError) {
          return MaterialApp(
            home: Scaffold(
              body:
                  Center(child: Text('Firebase init error: ${snapshot.error}')),
            ),
          );
        }
        return const MaterialApp(
          home: Scaffold(
            body: Center(child: CircularProgressIndicator()),
          ),
        );
      },
    );
  }
>>>>>>> 0d7df472edadaf38cd27f6c55368a5b786a717ff
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MySplashScreen(),
      theme: Provider.of<ThemeProvider>(context).themeData,
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
<<<<<<< HEAD

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: const MySplashScreen(),
//       theme: Provider.of<ThemeProvider>(context).themeData,
//       routes: {
//         '/spash_screen': (context) => const MySplashScreen(),
//         '/sign_in': (context) => const SignIn(),
//         '/sign_up': (context) => const SignUp(),
//         '/about_us': (context) => const AboutUs(),
//         '/contact_us': (context) => const ContactUs(),
//         '/profile_page': (context) => const EditAccountScreen(),
//       },
//     );
//   }
// }
=======
>>>>>>> 0d7df472edadaf38cd27f6c55368a5b786a717ff
// darkTheme: darkMode,

//       routes: {
//         '/spash_screen': (context) => const MySplashScreen(),
//         '/sign_in': (context) => const SignIn(),
//         '/sign_up': (context) => const SignUp(),
//         '/about_us': (context) => const AboutUs(),
//         '/contact_us': (context) => const ContactUs(),
//         '/profile_page': (context) => const EditAccountScreen(),
//       },
//     );
//   }
// }
