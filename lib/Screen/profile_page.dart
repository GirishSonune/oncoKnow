// import 'package:flutter/material.dart';
// import 'package:oncoknow/Screen/home_screen.dart';
//
// class ProfilePage extends StatelessWidget {
//   const ProfilePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Profile"),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => HomeScreen(),
//               ),
//             );
//           },
//         ),
//       ),
//       body: Container(
//         padding: EdgeInsets.all(20),
//         child: Column(
//           children: [
//             SizedBox(
//               width: 120,
//               height: 120,
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(100),
//                 child: Image(
//                   image: AssetImage("lib/images/doctorGirl.png"),
//                 ),
//               ),
//             ),
//
//             SizedBox(
//               height: 10,
//             ),
//             Text(
//               "Girish Soune",
//               style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//             ),
//             Text(
//               "girish.sonune@gmail.com",
//               style: TextStyle(fontSize: 12),
//             ),
//
//             const SizedBox(
//               height: 20,
//             ),
//             SizedBox(
//                 width: 200,
//                 child: ElevatedButton(
//                   onPressed: () {},
//                   child: Text(
//                     "Hello, Girish",
//                     style: TextStyle(color: Colors.black87),
//                   ),
//                 )),
//
//             SizedBox(
//               height: 30,
//             ),
//             Divider(),
//             SizedBox(
//               height: 10,
//             ),
//
//             // Menu
//             ProfileWidget(title: "Setting", icon: Icons.settings, onPress: () {},),
//             ProfileWidget(title: ,),
//             ProfileWidget(),
//             ProfileWidget(),
//             ProfileWidget(),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class ProfileWidget extends StatelessWidget {
//   const ProfileWidget({
//     Key? key,
//     required this.title,
//     required this.icon,
//     required this.onPress,
//     this.endIcon = true,
//     this.textColor,
//   }) : super(key: key);
//
//   final String title;
//   final IconData icon;
//   final VoidCallback onPress;
//   final bool endIcon;
//   final Color? textColor;
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       onTap: onPress,
//       leading: Container(
//         width: 30,
//         height: 30,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(100),
//           color: Colors.amberAccent,
//         ),
//         child: Icon(icon),
//       ),
//       title: Text(
//         title,
//         style: Theme.of(context).textTheme.surface.apply(color: textColor),
//       ),
//       trailing: endIcon
//           ? Container(
//               width: 30,
//               height: 30,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(100),
//                 color: Colors.amberAccent,
//               ),
//               child: Icon(Icons.chevron_right),
//             )
//           : null,
//     );
//   }
// }
