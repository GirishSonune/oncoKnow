import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:oncoknow/Screen/home_screen.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset("lib/images/logo.png", fit: BoxFit.contain, height: 50),
            SizedBox(
              width: 25,
            ),
            Text(
              "Contact Us",
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
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 50,
            ),
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Column(
              children: [
                Text(
                  "Contact",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Or, you can just send an email: \ninfo@OnCoKnow.org",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 25,
                ),
                myTextField("Name : "),
                myTextField("Surname : "),
                myTextField("Email : "),
                myTextField("What can we Help You"),
                // ElevatedButton(
                //   onPressed: () {},
                //   child: Text("Send"),
                //   style: Size(25),
                // ),
                InkWell(
                  child: Container(
                    margin: EdgeInsets.all(50),
                    width: size.width,
                    height: 70,
                    // padding: const EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(91, 193, 172, 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Text(
                        "Send Message",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    print("Tapped");
                  },
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Padding(
              padding: const EdgeInsets.all(50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Contact Information",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Icon(Icons.person),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Parali Vaijnath",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Icon(Icons.phone),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "8767052828",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Icon(Icons.mail),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "info@OnCoKnow.org",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_pin),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Gurunanak Hostel,SSGMCE,\nSBI Colony,Shegaon",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  //
  // Container socialIcon(image) {
  //   return Container(
  //     padding: const EdgeInsets.symmetric(
  //       horizontal: 32,
  //       vertical: 15,
  //     ),
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(12),
  //       border: Border.all(
  //         color: Colors.white,
  //         width: 2,
  //       ),
  //     ),
  //     child: Image.asset(
  //       image,
  //       height: 35,
  //     ),
  //   );
  // }

  Container myTextField(String hint) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 8,
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 12,
          ),
          fillColor: Colors.grey.shade100,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15),
          ),
          hintText: hint,
          hintStyle: const TextStyle(
            color: Colors.black45,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
