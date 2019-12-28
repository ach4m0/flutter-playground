import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import 'package:google_signin/src/providers/login_provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 50.0,
          width: MediaQuery.of(context).size.width / 2,
          child: Consumer<LoginProvider>(
            builder: (BuildContext context, LoginProvider loginProvider, _){
              return RaisedButton(
                color: Colors.blue,
                elevation: 8.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(FontAwesomeIcons.google, color: Colors.white,),
                    Text('Sign in with Google', style: TextStyle(color: Colors.white),)
                  ],
                ),
                onPressed: () {
                  loginProvider.login();
                },
              );
            }
          ), 
        ),
      ),
    );
  }
}