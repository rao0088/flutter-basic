import 'package:flutter/material.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container (
        alignment: Alignment.center ,
        padding: EdgeInsets.only(left: 30.0,top:50.0),
        color: Colors.yellow ,
        child: Column( children: <Widget>[

          Row (
            children: <Widget>[
              Expanded(child: Text (
                  "ajeet" , style: TextStyle (
                  decoration: TextDecoration.none
                  )) ,
                       ) ,
              Expanded (
                  child: Text (
                    "peehu yadava" , style: TextStyle (
                      decoration: TextDecoration.none
                      ) ,
                    )
                  )
            ] ,
            ),
          Row (
            children: <Widget>[
              Expanded(child: Text (
                  "neetu yaadav" , style: TextStyle (
                  decoration: TextDecoration.none,fontSize: 20.0
                  )) ,
                       ) ,
              Expanded (
                  child: Text (
                    "ayan yadav" , style: TextStyle (
                      decoration: TextDecoration.none
                      ) ,
                    )
                  )
            ] ,
            ),
          Myimage()
        ],)

        ); //Container
  }
}

class Myimage extends StatelessWidget {
  @override
  Widget build ( BuildContext context
      ) {
    // TODO: implement build
    AssetImage assetImage = AssetImage (
        'images/pihu.jpg'
        );
    Image image = Image (
      image: assetImage , width: 350.0 , height: 350.0 ,
      );
    return Container (
      child: image,
      );
  }


}
