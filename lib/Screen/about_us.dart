import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:oncoknow/Screen/home_screen.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset("lib/images/logo.png", fit: BoxFit.contain, height: 50),
            const SizedBox(width: 25),
            const Text(
              "About Us",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(91, 193, 172, 1),
              ),
            ),
          ],
        ),
        leading: IconButton(
          icon: const Icon(Ionicons.chevron_back_outline),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            );
          },
        ),
      ),
      drawer: const Drawer(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                "lib/images/img4.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 25),
          const Center(
            child: Text(
              "Product Overviiew",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const Center(
            child: Text(
              "Kind Heart Motive",
              style: TextStyle(
                color: Color.fromRGBO(91, 193, 172, 1),
              ),
            ),
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.all(25),
            child: Text(
              "OnCoKnow is a state-of-the-art software designed to revolutionize cancer diagnostics, with a particular focus on the early detection of circulating tumor cells (CTCs). Our product is meticulously crafted to provide a user-friendly experience, making it accessible to individuals who seek proactive health management. Leveraging cutting-edge technology, [Software Name] utilizes advanced algorithms and image processing techniques to identify CTCs in the bloodstream with unparalleled precision.",
              style: TextStyle(fontSize: 18),
            ),
          ),
          const SizedBox(height: 50),
          const Center(
            child: Text(
              "Our Mission",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.all(25),
            child: Text(
              "Empowering individuals through accessible and advanced cancer diagnostics for early detection, fostering proactive health management.",
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
