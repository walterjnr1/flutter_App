import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'login.dart';


class Register2 extends StatefulWidget {
  const Register2({Key? key}) : super(key: key);

  @override
  _Register2State createState() => _Register2State();
}

class _Register2State extends State<Register2> {
 //TextEditingController selectedValue = TextEditingController();
  TextEditingController fullname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController citystate = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController password2 = TextEditingController();

  Future register() async {
    var url = "http://192.168.43.16/flutter_forum_app/register.php";
    var response = await http.post(Uri.parse(url), body: {
      "role": selectedValue,
      "fullname": fullname.text,
      "email": email.text,
      "phone": phone.text,
      "address": address.text,
      "country": country.text,
      "city_state": citystate.text,
      "password": password.text,
      "password2": password2.text,
    });
    var data = json.decode(response.body);
    if (data == "success") {
      Fluttertoast.showToast(
          msg: "Registration was successful",
          toastLength: Toast.LENGTH_SHORT,
          backgroundColor: Colors.blue,
          timeInSecForIosWeb: 3,
          textColor: Colors.white);


      fullname.text='';
      email.text='';
      phone.text='';
      address.text='';
      country.text='';
      citystate.text='';
      password.text='';
      password2.text='';
    } else if (data == "Passwords are not compatible"){
      Fluttertoast.showToast(
          msg: "Passwords are not compatible",
          toastLength: Toast.LENGTH_SHORT,
          backgroundColor: Colors.red,
          timeInSecForIosWeb: 3,
          textColor: Colors.white);
    }else{
      Fluttertoast.showToast(
          msg: "Something Went wrong",
          toastLength: Toast.LENGTH_SHORT,
          backgroundColor: Colors.red,
          timeInSecForIosWeb: 3,
          textColor: Colors.white);
    }
  }

   String selectedValue = "Father";
  List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(child: Text("Guardian"),value: "Guardian"),
      const DropdownMenuItem(child: Text("Father"),value: "Father"),
      const DropdownMenuItem(child: Text("Mother"),value: "Mother"),
      const DropdownMenuItem(child: Text("Others"),value: "Others"),
    ];
    return menuItems;
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
                  const Expanded(child:Text("Create An Account",
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
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Login()));
                        },
                        child: const Text('Log In',
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
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),

                                 child: DropdownButtonFormField(
                                     decoration: InputDecoration(
                                       enabledBorder: OutlineInputBorder(
                                         borderSide: BorderSide(color: Colors.blue, width: 2),
                                         borderRadius: BorderRadius.circular(20),
                                       ),
                                       border: OutlineInputBorder(
                                         borderSide: BorderSide(color: Colors.blue, width: 2),
                                         borderRadius: BorderRadius.circular(20),
                                       ),
                                       filled: true,
                                       fillColor: Colors.white,
                                     ),
                                     dropdownColor: Colors.white,
                                     value: selectedValue,
                                     onChanged: (String? newValue) {
                                       setState(() {
                                         selectedValue = newValue!;
                                       });
                                     },

                                     items: dropdownItems)

                            ),

                              ),


                          Container(
                            padding: const EdgeInsets.all(10),
                            child: TextField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Fullname',
                              ),
                              controller: fullname,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            child: TextField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Email Address',
                              ),
                              controller: email,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            child: TextField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Phone Number',
                              ),
                              controller: phone,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            child: TextField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Address',
                              ),
                              controller: address,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  <Widget>[
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextField(
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Country',
                                        contentPadding: EdgeInsets.all(10)
                                    ),
                                    controller: country,

                                  ),
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextField(
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'City/State',
                                        contentPadding: EdgeInsets.all(10)
                                    ),
                                    controller: citystate,
                                  ),
                                ),
                              ),

                            ],
                          ),

                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                            child: TextField(
                              obscureText: true,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Password',
                              ),
                              controller: password,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                            child: TextField(
                              obscureText: true,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Confirm Password',
                              ),
                              controller: password2,
                            ),
                          ),

                          Container(
                            height: 30,
                          ),

                          Container(
                              height: 50,
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: ElevatedButton(
                                child: const Text('Sign In'),
                                onPressed: () {
                                  register();
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