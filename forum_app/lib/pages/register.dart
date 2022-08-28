import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:forum_app/pages/login.dart';
import 'package:http/http.dart' as http;


void main() => runApp(const MaterialApp(
  home: Register(),

));
class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
 // TextEditingController selectedValue = TextEditingController();
  TextEditingController txtfullname_f = TextEditingController();
  TextEditingController txtemail_f = TextEditingController();
  TextEditingController txtphone_f = TextEditingController();
  TextEditingController txtaddress_f = TextEditingController();
  TextEditingController txtcountry_f = TextEditingController();
  TextEditingController txtcity_state_f = TextEditingController();
  TextEditingController txtpassword_f = TextEditingController();
  TextEditingController txtpassword2_f = TextEditingController();


  Future register(BuildContext context) async {
    debugPrint(txtfullname_f.text);
   debugPrint(txtemail_f.text);
    try{
      var url = "http://192.168.43.16/flutter_forum_app/register.php";
      var response = await http.post(Uri.parse(url),

          body: {
           // "role": selectedValue,
            "fullname": txtfullname_f.text,
            "email": txtemail_f.text,
            "phone": txtphone_f.text,
            "address": txtaddress_f.text,
            "country": txtcountry_f.text,
            "city_state": txtcity_state_f.text,
            "password": txtpassword_f.text,
            "password2": txtpassword2_f.text,

          });
      var data = json.decode(response.body);
      debugPrint("SUCCESSFUL");

      showMessage(
          message: data,
          context: context
      );
      return data;
    }catch(err){
      showMessage(
          message: err.toString(),
          context: context
      );
    }
  }

  int selectedValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: DefaultTabController(
            length: 2,
            initialIndex: 0,
            child: Scaffold(
                backgroundColor: Colors.white,
                appBar: AppBar(

                    bottom:  const TabBar(

                      indicatorColor: Colors.green,
                      indicatorWeight: 6,

                      tabs: [
                        //     Tab(icon: Icon(Icons.music_note),text: "Car"),
                        Tab(child: Text('Care givers', style: TextStyle(color: Colors.grey,),) ),
                        Tab(child: Text('Health Professionals', style: TextStyle(color: Colors.grey),) ),

                      ],
                    ), // TabBar
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

                TabBarView(
                    children: [
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

                                          child: DropdownButton(
                                              value: selectedValue,
                                              items: const [
                                                DropdownMenuItem(
                                                  child: Text("Which of these roles best describes you?"),
                                                  value: 1,
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("Mother"),
                                                  value: 2,
                                                ),
                                                DropdownMenuItem(
                                                    child: Text("Father"),
                                                    value: 3
                                                ),
                                                DropdownMenuItem(
                                                    child: Text("Guardian"),
                                                    value: 4
                                                ),
                                              ],
                                              onChanged: (val) {
                                                setState(() {
                                                  selectedValue = val as int;
                                                });
                                              }
                                              ),


                                    ),),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    child: TextField(
                                      controller: txtfullname_f,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Fullname',
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    child: TextField(
                                      controller: txtemail_f,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Email Address',
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    child: TextField(
                                      controller: txtphone_f,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Phone Number',
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    child: TextField(
                                      controller: txtaddress_f,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Address',
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children:  <Widget>[
                                      Flexible(
                                        child: Padding(
                                          padding: EdgeInsets.all(10.0),
                                          child: TextField(
                                              controller: txtcountry_f,
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  labelText: 'Country',
                                                  contentPadding: EdgeInsets.all(10)
                                              )
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        child: Padding(
                                          padding: EdgeInsets.all(10.0),
                                          child: TextField(
                                              controller: txtcity_state_f,
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  labelText: 'City/State',
                                                  contentPadding: EdgeInsets.all(10)
                                              )
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),

                                  Container(
                                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                                    child: TextField(
                                      obscureText: true,
                                      controller: txtpassword_f,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Password',
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                                    child: TextField(
                                      obscureText: true,
                                      controller: txtpassword2_f,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Confirm Password',
                                      ),
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

                                        },
                                      )
                                  ),

                                ],
                              )
                          )
                      )
    ),
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

                                          child: DropdownButton(
                                              value: selectedValue,
                                              items: const [
                                                DropdownMenuItem(
                                                  child: Text("Which of these roles best describes you?"),
                                                  value: 1,
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("Mother"),
                                                  value: 2,
                                                ),
                                                DropdownMenuItem(
                                                    child: Text("Father"),
                                                    value: 3
                                                ),
                                                DropdownMenuItem(
                                                    child: Text("Guardian"),
                                                    value: 4
                                                ),
                                              ],
                                              onChanged: (val) {
                                                setState(() {
                                                  selectedValue = val as int;
                                                });
                                              }
                                          ),


                                        ),),
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        child: TextField(
                                          controller: txtphone_f,
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: 'Fullname',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        child: TextField(
                                          controller: txtphone_f,
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: 'Email Address',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        child: TextField(
                                          controller: txtphone_f,
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: 'Phone Number',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        child: TextField(
                                          controller: txtphone_f,
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: 'Address',
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: const <Widget>[
                                          Flexible(
                                            child: Padding(
                                              padding: EdgeInsets.all(10.0),
                                              child: TextField(
                                                  decoration: InputDecoration(
                                                      border: OutlineInputBorder(),
                                                      labelText: 'Country',
                                                      contentPadding: EdgeInsets.all(10)
                                                  )
                                              ),
                                            ),
                                          ),
                                          Flexible(
                                            child: Padding(
                                              padding: EdgeInsets.all(10.0),
                                              child: TextField(
                                                  decoration: InputDecoration(
                                                      border: OutlineInputBorder(),
                                                      labelText: 'City/State',
                                                      contentPadding: EdgeInsets.all(10)
                                                  )
                                              ),
                                            ),
                                          ),

                                        ],
                                      ),

                                      Container(
                                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                                        child: TextField(
                                          obscureText: true,
                                          controller: txtphone_f,
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: 'Password',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                                        child: TextField(
                                          obscureText: true,
                                          controller: txtphone_f,
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: 'Confirm Password',
                                          ),
                                        ),
                                      ),

                                      Container(
                                        height: 70,
                                      ),
                                      Container(
                                          height: 50,
                                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                          child: ElevatedButton(
                                            child: const Text('Sign In'),
                                            onPressed: () {

                                            },
                                          )
                                      ),

                                    ],
                                  )
                              )
                          )
                      ),
                    ]
                )

            )
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
    backgroundColor: Colors.green
    ,)
  );

}

