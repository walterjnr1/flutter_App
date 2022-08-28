import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:forum_app/pages/register2.dart';
import 'package:http/http.dart' as http;
import 'home.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:async';
import 'package:http/http.dart' show get;

class Login2 extends StatefulWidget {
  const Login2({Key? key}) : super(key: key);

  @override
  _Login2State createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Future login() async {
    var url = "http://localhost/flutter_forum_app/login.php";
    var response = await http.post(Uri.parse(url), body: {
      "email": email.text,
      "password": password.text,
    });
    var data = json.decode(response.body);
    if (data == "Successful Login") {

      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Home(),),);
    } else {
      Fluttertoast.showToast(
          msg: "Invalid Login details",
          toastLength: Toast.LENGTH_SHORT,
          backgroundColor: Colors.red,
          timeInSecForIosWeb: 3,
          textColor: Colors.white);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:  Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(

              title:
              Row(
                children: [
                  const Expanded(child:Text("Login",
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(' '),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Register2()));
                        },
                        child: const Text('Sign up',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.deepOrangeAccent,
                          ),
                        ),

                      )
                    ],
                  ),
                ],
              ),

              backgroundColor: Colors.white,
              leading:

              IconButton(
                icon: CircleAvatar(backgroundColor: Colors.greenAccent[100],
                  radius: 30,
                  child:
                  const Icon(Icons.arrow_back),
                ),
                onPressed: (){
                  Navigator.pop(context);
                },
              )

          ),

          body:

          //TabBarView(
          //children: [
          Container(

              child: Center(

                  child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ListView(
                        children: <Widget>[
                          Container(
                            height: 60,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            child: TextField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Email',
                              ),
                              controller: email,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            child: TextField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Password',
                              ),
                              controller: password,
                              obscureText: true,
                            ),
                          ),
                          Container(
                            height: 30,
                          ),

                          Container(
                              height: 50,
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: ElevatedButton(
                                child: const Text('Login'),
                                onPressed: () {
                                  login();
                                },
                              )
                          ),
                          Container(
                            height: 50,
                          ),

                        ],
                      )
                  )
              )
          ),

          // ]
          //)

        )
    );
  }
}

void showMessage({String? message, BuildContext? context}){
  ScaffoldMessenger.of(context!).showSnackBar(SnackBar(content:
  Text(
    message!,
    style: const TextStyle(color: Colors.white),
    textAlign: TextAlign.center,
  ),
    backgroundColor: Colors.lightBlueAccent
    ,)
  );

}
