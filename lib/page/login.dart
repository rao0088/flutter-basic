import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  Loginform createState() {
    // TODO: implement createState
    return Loginform();
  }
}


class Loginform extends State<LoginPage> {

  String myvar= "data";
  String display="this is dummy data";
  void showTest(){
    setState(() {
      display = myvar;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('login page'),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("$display"),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  onChanged: (text){
                    myvar=text;
                  },
                  decoration:
                      InputDecoration(prefixIcon: Icon(Icons.account_box,color:Colors.amber,),
                        suffixIcon: Icon(Icons.remove_red_eye,color:Colors.amber,),
                        labelText: "username",
                        border: OutlineInputBorder(),
                        disabledBorder: OutlineInputBorder(),
                      ),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0

                  ),
                ),
              ),

            RaisedButton(
              color: Colors.red,
              textColor: Colors.white,
              onPressed:(){
                showTest();
              },
              child: Text("Login"),

            )
            ],
          ),
        ));
  }
}
