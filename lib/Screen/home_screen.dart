import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:oncoknow/auth.dart';
import 'package:oncoknow/components/slider.dart';
import 'package:oncoknow/components/slider_viewer.dart';
import 'package:provider/provider.dart';

import '../components/my_drawer.dart';
// import '../components/slider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final User? user = Auth().currentUser;

  Future<void> signOut() async {
    await Auth().signOut();
  }

  Widget _title() {
    return const Text("Firebase Auth");
  }

  Widget _userUid() {
    return Text(user?.email ?? 'user email');
  }

  // Widget _signOutButton() {
  //
  // }

  @override
  Widget build(BuildContext context) {
    // access product in shop
    final news = context.watch<Shop>().shop;

    return Scaffold(
      // backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset("lib/images/logo.png", fit: BoxFit.contain, height: 50),
            SizedBox(
              width: 20,
            ),
            Text(
              "OncoKnow",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(91, 193, 172, 1),
              ),
            ),
          ],
        ),
        actions: [
          // go to cart button
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
              onPressed: () => Navigator.pushNamed(context, '/profile_page'),
              icon: const Icon(Icons.person_outline_rounded),
              // style: ButtonStyle(iconSize: ),
            ),
          ),
        ],
        // backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      drawer: const MyDrawer(),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: GNav(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
            tabBackgroundColor: Color.fromARGB(255, 56, 56, 56),
            color: Colors.grey, // Inactive Color
            activeColor: Colors.white,
            tabBorderRadius: 14, // Active border radius
            gap: 8, // Add some gap between Text and Icon
            tabs: [
              GButton(icon: Icons.home, text: 'Home'),
              GButton(icon: Icons.search, text: 'Search'),
              GButton(icon: Icons.notifications_active, text: 'Notification'),
              GButton(icon: Icons.account_circle, text: 'Profile'),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          // product list
          SizedBox(
            height: 550,
            child: ListView.builder(
                itemCount: news.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(15),
                itemBuilder: (context, index) {
                  // get each individual product from shop
                  final product = news[index];

                  // return  as a product title UI
                  return MyProductTile2(news: product);
                }),
          ),

          const SizedBox(
            height: 100,
          ),
          Column(
            children: [
              Text(
                "Welcome to OnCoKnow",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),
              Image.asset("lib/images/hands.png"),
              Text(
                "Become a partner",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 100,
              ),
              Image.asset("lib/images/heart.png"),
              Text("Caring Earth", style: TextStyle(fontSize: 25)),
              SizedBox(
                height: 100,
              ),
              Image.asset("lib/images/receive.png"),
              Text("Save Cancer Patients", style: TextStyle(fontSize: 25)),
            ],
          ),
          SizedBox(
            height: 150,
          )
        ],
      ),
    );
  }
}
