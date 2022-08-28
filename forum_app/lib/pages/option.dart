import 'package:flutter/material.dart';
import 'package:forum_app/pages/register2.dart';
import 'login2.dart';

class Option extends StatefulWidget {
  const Option({Key? key}) : super(key: key);

  @override
  State<Option> createState() => _OptionState();
}

class _OptionState extends State<Option> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(66.0),
        child: AppBar(
          title: const Center(
            child: Text('',
                style: TextStyle(
                  fontSize: 20.0,
                )),
          ),
          backgroundColor: Colors.white,
           elevation: 0.0,
       ),

      ),
      body: Column(

        children: [
          const SizedBox(
            height: 150,
          ),

          Container(
            margin: const EdgeInsets.fromLTRB(40, 0, 40, 0),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  //Navigator.of(context).pushNamed(Login.routeName);
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Register2()));

                },
                child: const Text(
                  'Register',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue,
                      //color: Color(0xFF1D1D1D)
                    ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFFFFFFF),
                    side: const BorderSide(
                      width: 1.0,
                      color: Color(0xFFED6909),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                    minimumSize: const Size.fromHeight(50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),

          Container(
            margin: const EdgeInsets.fromLTRB(40, 0, 40, 0),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).pushNamed(xxxxx.routeName);
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Login2()));

                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    color: Colors.blue,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFFFFFFF),
                    side: const BorderSide(
                      width: 1.0,
                      color: Color(0xFF555555),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                    minimumSize: const Size.fromHeight(50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
