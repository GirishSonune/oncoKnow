import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter, // Improved gradient alignment
            colors: [
              Color(0xffF4EEF2),
              Color(0xffE3EDF5),
            ],
          ),
        ),
        child: SafeArea(
            child: ListView(
          children: [
            SizedBox(height: size.height * 0.03),
            const Text(
              "Hello!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 37,
                color: Color(0xff353047),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "Wellcome to OncoKnow",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 27, color: Color(0xff6F6B7A), height: 1.2),
            ),
            SizedBox(height: size.height * 0.04),
            // for username and password

            Container(
              height: 620,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              child: ListView(
                children: [
                  const Center(
                      child: Text(
                    "Enter Your Details",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff353047)),
                  )),
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Divider(),
                  ),
                  myTextField("Enter Your Name :", Colors.grey.shade100, false),
                  myTextField(
                      "Enter Your Email :", Colors.grey.shade100, false),
                  myTextField(
                      "Enter Your Mobile No. :", Colors.grey.shade100, false),
                  myTextField(
                      "Pathologist Name :", Colors.grey.shade100, false),
                  myTextField("Enter Registration Number :",
                      Colors.grey.shade100, false),
                  myTextField(
                      "Enter Your Aadhar No. :", Colors.grey.shade100, false),
                  myTextField(
                      "Enter Your Gender :", Colors.grey.shade100, false),
                  myTextField("Date of Birth :", Colors.grey.shade100, false),
                  myTextField(
                      "Enter Your Address :", Colors.grey.shade100, false),
                  myTextField("Enter Your City :", Colors.grey.shade100, false),
                  myTextField(
                      "Enter Your State :", Colors.grey.shade100, false),
                  myTextField(
                      "Enter Your Country :", Colors.grey.shade100, false),
                  myTextField("Enter Password :", Colors.black26, true),
                  myTextField("Re Enter Password :", Colors.black26, true),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.04),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  // for sign in button
                  InkWell(
                    child: Container(
                      width: size.width,
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                        color: const Color(0xffFD6B68),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Center(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      print("Tapped");
                    },
                  ),
                  SizedBox(height: size.height * 0.06),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 2,
                        width: size.width * 0.2,
                        color: Colors.black12,
                      ),
                      const Text(
                        "  Or continue with   ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff6F6B7A),
                          fontSize: 16,
                        ),
                      ),
                      Container(
                        height: 2,
                        width: size.width * 0.2,
                        color: Colors.black12,
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.06),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      socialIcon("assets/images/google.png"),
                      socialIcon("assets/images/apple.png"),
                      socialIcon("assets/images/facebook.png"),
                    ],
                  ),
                  SizedBox(height: size.height * 0.1),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }

  Container socialIcon(image) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
      ),
      child: Image.asset(
        image,
        height: 35,
      ),
    );
  }

  Container myTextField(String hint, Color color, bool isPassword) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 8,
      ),
      child: TextField(
        obscureText: isPassword, // Added password hiding functionality
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
            suffixIcon: isPassword
                ? Icon(
                    Icons.visibility_off_outlined,
                    color: color,
                  )
                : null), // Only show icon for password fields
      ),
    );
  }
}
