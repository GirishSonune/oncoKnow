import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // drawer header logo
          const SizedBox(
            height: 25,
          ),

          // DrawerHeader(
          //   child: Container(
          //     color: Colors.black,
          //     height: 100,
          //     width: 100,
          //     margin: EdgeInsets.only(bottom: 45),
          //
          //     // padding: EdgeInsets.only(
          //     //     top: 24 + MediaQuery.of(context).padding.top, bottom: 50),
          //     // decoration: BoxDecoration(shape: BoxShape.circle,),
          //     // decoration:
          //     //     BoxDecoration(borderRadius: BorderRadius.circular((20))),
          //     child: Text("Hello Girish"),
          //   ),
          // ),

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DrawerHeader(
                child: Container(
                  // width: double.infinity,
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: const CircleAvatar(
                          radius: 55,
                          backgroundImage: AssetImage(
                            "lib/images/doctorGirl.png",
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   height: 12,
                      // ),
                      const Text(
                        "Hello, Girish",
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                      // Text("girish.sonune"),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),

          MyListTile(
              text: "Home",
              icon: Icons.home,
              onTap: () => Navigator.pop(context)),

          MyListTile(
              text: "About Us",
              icon: Icons.more_horiz_rounded,
              onTap: () => Navigator.pop(context)),

          MyListTile(
              text: "Contact",
              icon: Icons.perm_contact_cal_rounded,
              onTap: () => Navigator.pop(context)),

          // Padding(
          //   padding: const EdgeInsets.only(left: 25.0),
          //   child: Column(
          //     children: [
          //       ListTile(
          //         title: Text("Home"),
          //         leading: Icon(Icons.h_mobiledata),
          //       ),
          //       ListTile(
          //         title: Text("Home"),
          //         leading: Icon(Icons.h_mobiledata),
          //       ),
          //       ListTile(
          //         title: Text("Home"),
          //         leading: Icon(Icons.h_mobiledata),
          //       ),
          //     ],
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: MyListTile(
                text: "Exit",
                icon: Icons.logout,
                onTap: () => Navigator.pushNamedAndRemoveUntil(
                    context, '/intro_page', (route) => false)),
          ),
        ],
      ),
    );
  }
}

class MyListTile extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onTap;
  const MyListTile(
      {super.key, required this.text, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.grey,
        ),
        title: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
        ),
        onTap: onTap,
      ),
    );
  }
}
