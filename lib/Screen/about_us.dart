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
            SizedBox(
              width: 25,
            ),
            Text(
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
          Container(
            padding: EdgeInsets.all(25),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                "lib/images/img4.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Center(
            child: Text(
              "Product Overviiew",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "Kind Heart Motive",
              style: TextStyle(
                color: Color.fromRGBO(91, 193, 172, 1),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.all(25),
            child: Text(
              "OnCoKnow is a state-of-the-art software designed to revolutionize cancer diagnostics, with a particular focus on the early detection of circulating tumor cells (CTCs). Our product is meticulously crafted to provide a user-friendly experience, making it accessible to individuals who seek proactive health management. Leveraging cutting-edge technology, [Software Name] utilizes advanced algorithms and image processing techniques to identify CTCs in the bloodstream with unparalleled precision.",
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              "Our Mission",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
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
