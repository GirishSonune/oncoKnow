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
  runApp(
    MultiProvider(
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
