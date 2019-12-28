import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:google_signin/src/providers/login_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Welcome user',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                ),
              ),
              SizedBox(height: 20.0,),
              Container(
                height: 50.0,
                width: 150.0,
                child: Consumer<LoginProvider>(
                  builder: (BuildContext context, LoginProvider loginProvider, Widget _) {
                    return RaisedButton(
                      color: Colors.red,
                      elevation: 8.0,
                      shape: StadiumBorder(),
                      onPressed: () {
                        loginProvider.logout();
                      },
                      child: Text('LOGOUT',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0
                        ),
                      ),
                    );
                  }
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}