import 'package:flutter/material.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20.0))
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Payment', style: TextStyle(fontSize: 20.0),),
              SizedBox(height: 10.0,),
              Divider(),
              SizedBox(height: 5.0,),
              _createTextField(
                hintText: 'Name',
                helperText: 'Required'
              ),
              SizedBox(height: 10.0,),
              _createTextField(
                hintText: 'Credit Card',
                helperText: 'Required'
              ),
              SizedBox(height: 10.0,),
              _createTextField(
                hintText: 'Expiration date',
                helperText: 'Required'
              ),
              SizedBox(height: 10.0,),
              Row(
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {},
                    child: Text('CHECKOUT'),
                    color: Colors.deepPurple[700],
                    textColor: Colors.white,
                    shape: StadiumBorder(),
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.end,
              )
            ],
          ),

      ),
    );
  }

  Widget _createTextField({hintText, helperText}) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))
        ),
        hintText: hintText,
        helperText: helperText
      ),
    );
  }

}