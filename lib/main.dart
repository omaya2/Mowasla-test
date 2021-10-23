import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:mowasla_prototype/Register/signIn.dart';
import 'package:mowasla_prototype/Register/signUp.dart';
import 'package:mowasla_prototype/mainScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

DatabaseReference usersRef =
    FirebaseDatabase.instance.reference().child("users");

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: signUp.idScreen,
      routes: {
        signUp.idScreen: (context) => signUp(),
        signIn.idScreen: (context) => signIn(),
        mainScreen.idScreen: (context) => mainScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
