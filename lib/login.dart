import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food/second_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  final formKey=GlobalKey<FormState>();
  String userName="";
  String password="";
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Container(
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 70,),
                  Image.asset('images/burger .png',),
                  SizedBox(width: 5,),
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Text('NeedFood',style: TextStyle(fontSize: 28,color: Colors.white),),
                  )
                ],
              ),
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('images/Rectangle 1.png')
                  )
              ),
            ),
            SizedBox(height: 20,),

            Row(
              children: [
                SizedBox(width: 40,),
                Image.asset('images/pizza.png'),
                SizedBox(width: 90,),
                Image.asset('images/fast-food (1).png'),
                SizedBox(width: 80,),
                Image.asset('images/burchak.png')
              ],
            ),
            SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 40,),
                Text('Sign In',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color:Colors.black),),
                SizedBox(width: 20,),
                Image.asset('images/platter.png')
              ],
            ),
            Padding(padding: EdgeInsets.all(16),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        onSaved: (value){
                          userName=value!;
                        },
                        validator: (value){
                          if(value!.length<6){
                            return "UserName not valid";
                          }
                        },
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
                          label: Text('UserName'),

                        ),
                      ),
                      SizedBox(height: 10,),
                      TextFormField(
                        onSaved: (value){
                          password=value!;
                        },
                        validator: (value){
                          if(value!.length<4){
                            return "password not valid";
                          }
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
                          label: Text('Password'),
                        ),
                      ),
                      SizedBox(height: 6,),
                      Center(
                        child: Text('Forgot password?'),
                      ),
                      SizedBox(height: 14,),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
                          final isValid=formKey.currentState!.validate();
                          if(isValid){
                            formKey.currentState!.save();
                            final snackBar=SnackBar(
                              content:Text("UserName {$userName}  password {$password}"),
                              action: SnackBarAction(
                                label: "Ok",
                                onPressed: (){},
                              ),
                            );
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          }
                        },
                        child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.blue
                            ),
                            width: double.infinity,
                            child: Center(child:Text("Login",style: TextStyle(fontSize: 20,color: Colors.white),),)
                        ),
                      ),
                      SizedBox(height: 30,),
                      Row(
                        children: [
                          SizedBox(width: 10,),
                          Container(
                            width: 60,
                            height: 60,
                            child: Image.asset('images/fast-food .png',),
                          ),
                          SizedBox(width: 100,),
                          Container(
                            width: 50,
                            height: 50,
                            child: Image.asset('images/pizza.png',),
                          )

                        ],
                      ),
                      SizedBox(height: 40,),
                      Row(
                        children: [
                          SizedBox(width: 100,),
                          Container(
                            width: 30,
                            height: 30,
                            child: Image.asset('images/saladd.png',),
                          ),
                          SizedBox(width: 110,),
                          Container(
                            width: 50,
                            height: 50,
                            child: Image.asset('images/platterr.png',),
                          )
                        ],
                      ),
                    ],
                  ),
                )
            ),
            SizedBox(height: 40,),
            Center(
              child: Text('No account yet?'),
            ),
            Center(
              child: Text('Sign up now',style: TextStyle(color: Colors.blue),),
            ),

          ],
        )
    );
  }
}