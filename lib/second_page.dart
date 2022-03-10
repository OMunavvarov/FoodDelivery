import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Column(
          children: [
                Container(
                  decoration: BoxDecoration(
              boxShadow:
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 20,),
                      Container(
                        width: 40,
                          height: 60,
                          child: Image.asset('images/burger .png')),

                      Column(
                        children: [
                          Text(''),
                          Text('Need Food',style: TextStyle(fontSize: 20),),
                        ],
                      ),
                      SizedBox(width: 120,),
                      RawMaterialButton(
                        onPressed: () {},
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.search_outlined,
                          size: 18.0,
                        ),
                        padding: EdgeInsets.all(10.0),
                        shape: CircleBorder(),
                      )
                    ],
                  ),
                  ),
            ]
        ),
      ) ,
    );
  }
}