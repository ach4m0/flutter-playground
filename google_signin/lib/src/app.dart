import 'package:flutter/material.dart';
import 'package:google_signin/src/pages/home-page.dart';
import 'package:provider/provider.dart';

import 'package:google_signin/src/providers/login_provider.dart';
import 'package:google_signin/src/pages/login-page.dart';
 
class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LoginProvider>(
      create: (BuildContext context) => LoginProvider(),
      child: MaterialApp(
        title: 'Login App',
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (BuildContext context) {
            var loginProvider = Provider.of<LoginProvider>(context);
            if(loginProvider.isLoggedIn()) {
              return HomePage();
            }else{
              return LoginPage();
            }
          }
        }
      ),
    );
  }
}