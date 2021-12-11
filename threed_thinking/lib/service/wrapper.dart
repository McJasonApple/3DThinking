// Wrapper controlls login and logout -> switchs bewteen login page and main page

import 'package:flutter/material.dart';
import 'package:threed_thinking/ui/homepage_screen.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
   // Status loggedInStatus = Provider.of<AuthProvider>(context, listen: true).loggedInStatus;
   // return loggedInStatus == Status.LoggedIn ? HomePage() : Authenticate();
   return HomePage();
  }
}
