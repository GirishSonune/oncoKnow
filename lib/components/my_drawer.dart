import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme/theme_provider.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              // drawer header logo
              const SizedBox(
                height: 25,
              ),

              DrawerHeader(
                child: Container(
                  // width: double.infinity,
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () => Navigator.pushNamedAndRemoveUntil(
                            context, '/profile_page', (route) => false),
                        child: const CircleAvatar(
                          radius: 55,
                          backgroundImage: AssetImage(
                            "lib/images/avatar.png",
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
                  onTap: () => Navigator.pushNamedAndRemoveUntil(
                      context, '/about_us', (route) => false)),

              MyListTile(
                  text: "Contact Us",
                  icon: Icons.perm_contact_cal_rounded,
                  onTap: () => Navigator.pushNamedAndRemoveUntil(
                      context, '/contact_us', (route) => false)),

              // Divider(),
              MyListTile(
                  text: "Log In",
                  icon: Icons.login,
                  onTap: () => Navigator.pushNamedAndRemoveUntil(
                      context, '/sign_in', (route) => false)),

              MyListTile(
                  text: "Register",
                  icon: Icons.app_registration,
                  onTap: () => Navigator.pushNamedAndRemoveUntil(
                      context, '/sign_up', (route) => false)),

              MyListTile(
                  text: "Exit",
                  icon: Icons.logout,
                  onTap: () => Navigator.pushNamedAndRemoveUntil(
                      context, '/spash_screen', (route) => false)),
            ],
          ),

          // Theme
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: MyListTile(
              text: "Change Theme",
              icon: Icons.dark_mode_outlined,
              onTap: () => Provider.of<ThemeProvider>(context, listen: false)
                  .toggleTheme(),
            ),
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
