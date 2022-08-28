import 'package:flutter/material.dart';
import 'package:forum_app/pages/register.dart';

void main() => runApp(const MaterialApp(
  home: Login(),

));
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtphone = TextEditingController();
 // TextEditingController fullname = TextEditingController();

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
                        const Expanded(child:Text("Log In",
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
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Register()));
                              },

                              child: const Text('Sign Up',
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
                      Center(

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
                                      controller: txtemail,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Email',
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                                    child: TextField(
                                      obscureText: true,
                                      controller: txtphone,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Phone',
                                      ),
                                    ),
                                  ),
                                  Container(
                                      height: 400,
                                      alignment: Alignment.topLeft,
                                      padding: const EdgeInsets.all(8),
                                      child:  TextButton(
                                        onPressed: () {
                                          //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Register()));
                                        },
                                        child: const Text(
                                          'Forgot Password ?', //title
                                          textAlign: TextAlign.end,
                                        ),
                                      ),

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
                      ),
                      Center(

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
                                      controller: txtemail,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Email',
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                                    child: TextField(
                                      obscureText: true,
                                      controller: txtphone,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Phone',
                                      ),
                                    ),
                                  ),
                                  Container(
                                      height: 400,
                                      alignment: Alignment.topLeft,
                                      padding: const EdgeInsets.all(10),
                                      child: const Text(
                                        'Forgot Password ?',
                                        style: TextStyle(fontSize: 15,color: Colors.blue),

                                      )
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
                      ),
                    ]
                )

            )
        )
    );





  }
}


