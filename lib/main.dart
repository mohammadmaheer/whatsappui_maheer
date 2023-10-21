import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("WhatsApp"),
//           backgroundColor: Color.fromARGB(176, 26, 255, 18),
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               getChatUI(
//                 "https://hips.hearstapps.com/hmg-prod/images/2024-lamborghini-revuelto-127-641a1d518802b.jpg",
//                 Colors.green,
//                 "SA",
//                 "Sabeel Ahmed",
//                 "Where are you..?",
//                 "10;20",
//               ),
//               getChatUI(
//                 "https://www.rimage.com/emea/wp-content/themes/rimage/assets/images/disc.png",
//                 Colors.yellow,
//                 "AB",
//                 "Abdullah Bin Shahid",
//                 "Taking class right now",
//                 "11:00",
//               ),
//               getChatUI(
//                 "https://i0.wp.com/cocolapinedesign.com/wp-content/uploads/rimage-11-1.jpeg?fit=2000%2C1498&ssl=1",
//                 Colors.red,
//                 "AY",
//                 "Ayesha",
//                 "Where are you..?",
//                 "01:20",
//               )

//               // Image.asset("assets/car1.webp"),
//               // Image.asset("assets/car2.webp"),
//               // Image.network(
//               //     "https://hips.hearstapps.com/hmg-prod/images/2024-lamborghini-revuelto-127-641a1d518802b.jpg"),
//               // getBox(
//               //     "https://hips.hearstapps.com/hmg-prod/images/2024-lamborghini-revuelto-127-641a1d518802b.jpg"),
//               // getBox(
//               //     "https://images.unsplash.com/photo-1616455579100-2ceaa4eb2d37?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Ym13JTIwY2FyfGVufDB8fDB8fHww&w=1000&q=80"),
//               // getBox(
//               //     "https://hips.hearstapps.com/hmg-prod/images/2024-lamborghini-revuelto-127-641a1d518802b.jpg"),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// getBox(String url) {
//   return Container(
//     height: 200,
//     width: 200,
//     decoration: BoxDecoration(
//         image: DecorationImage(
//           fit: BoxFit.cover,
//           image: NetworkImage("$url"),
//         ),
//         border: Border.all(color: Colors.black, width: 5),
//         color: Colors.yellow,
//         borderRadius: BorderRadius.all(Radius.circular(500))),
//   );
// }

getChatUI(String url, Color cColor, String avatar, String title,
    String subTitle, String trailing) {
  return ListTile(
      tileColor: Color.fromARGB(255, 232, 232, 232),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(url),
        backgroundColor: cColor,
        child: Text(
          "$avatar",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      title: Text("$title"),
      subtitle: Text("$subTitle"),
      trailing: Text("$trailing"));
}

getStatusUI(String url, Color cColor, String avatar, String title,
    String subTitle, String trailing) {
  return ListTile(
      tileColor: Color.fromARGB(255, 232, 232, 232),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(url),
        backgroundColor: cColor,
        child: //Container(
            //   decoration: BoxDecoration(
            //       image: DecorationImage(
            //         fit: BoxFit.cover,
            //         image: NetworkImage(url),
            //       ),
            //       border: Border.all(color: Colors.black, width: 1),
            //       color: Colors.yellow,
            //       borderRadius: BorderRadius.all(Radius.circular(500))),
            // ),

            Text(
          "$avatar",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      title: Text("$title"),
      subtitle: Text("$subTitle"),
      trailing: Text("$trailing"));
}

getCallUI(String url, Color cColor, String avatar, String title,
    String subTitle, String trailing) {
  return ListTile(
    tileColor: Color.fromARGB(255, 232, 232, 232),
    leading: CircleAvatar(
      backgroundImage: NetworkImage(url),
      backgroundColor: cColor,
      child: //Container(
          //   decoration: BoxDecoration(
          //       image: DecorationImage(
          //         fit: BoxFit.cover,
          //         image: NetworkImage(url),
          //       ),
          //       border: Border.all(color: Colors.black, width: 1),
          //       color: Colors.yellow,
          //       borderRadius: BorderRadius.all(Radius.circular(500))),
          // ),

          Text(
        "$avatar",
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    ),
    title: Text("$title"),
    subtitle: Text("$subTitle"),
    trailing: Icon(
      Icons.call,
      color: Colors.blue,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whats App UI',
      theme: ThemeData(
        // This is the theme of your application.
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: MyCustomTab(),
    );
  }
}

class MyCustomTab extends StatefulWidget {
  const MyCustomTab({super.key});

  @override
  State<MyCustomTab> createState() => _MyCustomTabState();
}

class _MyCustomTabState extends State<MyCustomTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.zero, color: Colors.grey[300]),
                child: TabBar(
                  indicator: BoxDecoration(
                    color: Color.fromARGB(255, 167, 226, 236),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelColor: Colors.black,
                  dividerColor: Colors.black,
                  tabs: [
                    Column(
                      children: [
                        Tab(
                          icon: Icon(
                            Icons.chat,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Tab(
                      icon: Icon(
                        Icons.video_call,
                        color: Colors.white,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.call,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(children: [
                  getChatUI(
                    "https://hips.hearstapps.com/hmg-prod/images/2024-lamborghini-revuelto-127-641a1d518802b.jpg",
                    Colors.green,
                    "SA",
                    "Umar ali",
                    "Helo..?",
                    "05:14",
                  ),
                  getStatusUI(
                    "https://hips.hearstapps.com/hmg-prod/images/2024-lamborghini-revuelto-127-641a1d518802b.jpg",
                    Colors.orange,
                    "SA",
                    "Waqar khan",
                    "are you there..?",
                    "23:10",
                  ),
                  getCallUI(
                    "https://hips.hearstapps.com/hmg-prod/images/2024-lamborghini-revuelto-127-641a1d518802b.jpg",
                    Colors.grey,
                    "SA",
                    "Saad Ahmed",
                    "Where are you..?",
                    "11:40",
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
