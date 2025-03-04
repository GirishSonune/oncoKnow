// import 'package:flutter/material.dart';
// import 'package:oncoknow/theme/theme_provider.dart';
//
// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: () {},
//           icon: Icon(Icons.arrow_back_ios_new),
//         ),
//         title: Text("Profile"),
//         actions: [
//           IconButton(
//               onPressed: () {},
//               icon: Icon(isDark() ? Icons.sunny : Icons.nightlight)),
//         ],
//       ),
//       body: Container(
//         padding: EdgeInsets.all(DefaultSize),
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
//             SizedBox(height: 10,),
//             Text("Girish Soune", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
//             Text("girish.sonune@gmail.com", style: TextStyle(fontSize: 12),),
//
//             const SizedBox(height: 20,),
//             SizedBox(width: 200, child: ElevatedButton(onPressed: (){}, child: Text("Hello, Girish", style: TextStyle(color: Colors.black87),),)),
//
//           ],
//         ),
//       ),
//     );
//   }
// }
