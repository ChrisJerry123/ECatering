import 'package:flutter/material.dart';
// import 'package:get/get.dart';

import 'ui/pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
      routes: <String, WidgetBuilder>{
        '/SignInPage': (BuildContext context) => SignInPage(),
        '/ForgotPassword': (BuildContext context) => ForgotPassword(),
        '/SignUpPage': (BuildContext context) => SignUpPage(),
        '/AddressPage': (BuildContext context) => AddressPage(),
        '/SignUpCompletePage': (BuildContext context) => SignUpCompletePage(),
        '/HomeScreenPage': (BuildContext context) => HomeScreenPage(),
      },
    );
  }
}
