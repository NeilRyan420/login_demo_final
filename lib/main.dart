import 'package:login_demo_final/models/user.dart';
import 'package:login_demo_final/screens/wrapper.dart';
import 'package:login_demo_final/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value:AuthService().user,
      child: MaterialApp(
          home: Wrapper()
      ),
    );
  }
}