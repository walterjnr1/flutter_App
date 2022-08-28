import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:forum_app/pages/login.dart';


void main ()=>runApp(const MaterialApp(
  home: Home(),
));
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
   int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    //Bottomsheet
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),

        ),
        builder: (context) {

          return Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                height: 50.0,
              ),
              const Center(
                  child: Text(
                      'Create an account to get full access to JoJolos\'s Service',

          style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 17.0

                  )
              ),
              ),
              Container(
                height: 60.0,
              ),

              Container(
                height: 50.0, //Provides height for the RaisedButton
                padding: const EdgeInsets.fromLTRB(144, 10, 0, 0),
                child: FractionallySizedBox(
                  widthFactor: 0.7, ////Provides 70% width for the RaisedButton

                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),

                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text('Continue With Email',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ),
              Container(
                height: 20.0,
              ),

                Center(child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  <Widget>[
                     const Text('Don\'t have an account yet ?',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14.0,
                          // height: 5.5, //You can set your custom height here
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(width: 10),
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

                      ),
                    ]
                ),
              ),
              Container(
                height: 100.0,
              ),
            ],

          );
        }
    );
  }

  Card buildCard1() {

    var heading = 'Anonymous';
    var subheading =
        'Mother. 1 Min ago';

    return Card(
        elevation: 2.5,

        child: Column(
          children: [
            ListTile(
              leading: const CircleAvatar(backgroundImage: AssetImage('assets/no-image.png'),),


              title: Row(
                  children:  <Widget>[
                    Text(heading,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14.0,
                        // height: 5.5, //You can set your custom height here
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Image.asset('assets/badge1.jpg',
                      height: 28,
                      width: 20,
                      fit: BoxFit.fitWidth,),
                  ]
              ),
              subtitle: Text(subheading,
                style: const TextStyle(
                  fontSize: 13.0,
                  //height: 3.5, //You can set your custom height here
                  color: Colors.grey,
                ),
              ),

              trailing: const Icon(Icons.more_vert),
            ),
            const Divider(
              thickness: 0.5, // thickness of the line
              indent: 0, // empty space to the leading edge of divider.
              endIndent: 0, // empty space to the trailing edge of the divider.
              color: Colors.grey, // The color to use when painting the line.
              height: 25, // The divider's height extent.
            ),

            Container(
              height: 20.0,
              padding: const EdgeInsets.fromLTRB(13.0,2.0,2.0,2.0),
              alignment: Alignment.topLeft,
              child: const Text('My baby is struggling to Poop',
                style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w600,
                  //height: 3.5, //You can set your custom height here
                  color: Colors.black,

                ),
              ),

            ),
            Container(
              padding: const EdgeInsets.all(13.0),
              alignment: Alignment.centerLeft,
              child: const Text('My Almost 3 weeks old baby struggles to '
                  'poop.Her face turns red, stomach becomes so hard and she cries too. what can i do pls',
                style: TextStyle(
                  fontSize: 14.0,
                  // fontWeight: FontWeight.w600,
                  height: 1.4, //You can set your custom height here
                  color: Colors.black,

                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.all(16.0),
                alignment: Alignment.centerLeft,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.loyalty),
                  label: const Text("Stooling"),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                      textStyle: const TextStyle(
                          fontSize: 10)
                  ),
                )
            ),

            ButtonBar(
              //alignment: MainAxisAlignment.center,
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding:const EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 22
              ),
              mainAxisSize: MainAxisSize.max,
              children: [
                TextButton.icon(
                  icon: const Icon( Icons.thumb_up_outlined,color: Colors.black, size: 14,),
                  label: const Text('1250',
                      style: TextStyle(fontSize: 10,
                          color: Colors.black)
                  ),
                  onPressed: () => {},
                ),
                // const SizedBox(width: 100),
                TextButton.icon(
                  icon: const Icon( Icons.mode_comment_outlined,color: Colors.black, size: 14,),
                  label: const Text('2',
                      style: TextStyle(fontSize: 10,
                          color: Colors.black)
                  ),
                  onPressed: () => {},
                ),
                // const SizedBox(width: 100),
                TextButton.icon(
                  icon: const Icon( Icons.file_upload_outlined,color: Colors.black, size: 14,),
                  label: const Text('Share',
                      style: TextStyle(fontSize: 10,
                          color: Colors.black)
                  ),
                  onPressed: () => {},
                ),
              ],
            )
          ],
        )
    );
  }
  Card buildCard2() {

    var heading = 'Dr. Yusuf Shittu';
    var subheading =
        'Pedeatrician.  5.0.  1hr ago';

    return Card(
        elevation: 2.5,
        child: Column(
          children: [
            ListTile(
              leading:  CircleAvatar(backgroundImage: const AssetImage('assets/images89.jpg'),

                    //bottom: 0,
                    //right: -25,
                    child: RawMaterialButton(
                      onPressed: () {},
                      elevation: 2.0,
                      //fillColor: Color(0xFFF5F6F9),
                      child: const Icon(Icons.circle,
                        size:15,
                        color: Colors.green,),
                      padding: const EdgeInsets.all(27.0),
                      // shape: CircleBorder(),
                    )

              ),

              title: Row(
                  children:  <Widget>[
                    Text(heading,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14.0,
                        // height: 5.5, //You can set your custom height here
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Image.asset('assets/blue-badge.jpg',
                      height: 29,
                      width: 20,
                      fit: BoxFit.fitWidth,),
                  ]
              ),
              subtitle: Text(subheading,
                style: const TextStyle(
                  fontSize: 13.0,
                  //height: 3.5, //You can set your custom height here
                  color: Colors.grey,
                ),
              ),

              trailing: const Icon(Icons.more_vert),
            ),
            const Divider(
              thickness: 0.5, // thickness of the line
              indent: 0, // empty space to the leading edge of divider.
              endIndent: 0, // empty space to the trailing edge of the divider.
              color: Colors.grey, // The color to use when painting the line.
              height: 25, // The divider's height extent.
            ),

            Container(
              height: 20.0,
              padding: const EdgeInsets.fromLTRB(13.0,2.0,2.0,2.0),
              alignment: Alignment.topLeft,
              child: const Text('Is your  baby sleeping to much?',
                style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w600,
                  //height: 3.5, //You can set your custom height here
                  color: Colors.black,

                ),
              ),

            ),
            Container(
              padding: const EdgeInsets.all(13.0),
              alignment: Alignment.centerLeft,
              child: const Text('My baby has not been eating regularly as she used to which is making me really worried. pls i need advice',
                style: TextStyle(
                  fontSize: 14.0,
                  // fontWeight: FontWeight.w600,
                  height: 1.4, //You can set your custom height here
                  color: Colors.black,

                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.all(16.0),
                alignment: Alignment.centerLeft,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.loyalty),
                  label: const Text("Sleeping"),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                      textStyle: const TextStyle(
                          fontSize: 10)
                  ),
                )
            ),

            ButtonBar(
              //alignment: MainAxisAlignment.center,
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding:const EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 22
              ),
              mainAxisSize: MainAxisSize.max,
              children: [
                TextButton.icon(
                  icon: const Icon( Icons.thumb_up_outlined,color: Colors.black, size: 14,),
                  label: const Text('1250',
                      style: TextStyle(fontSize: 10,
                          color: Colors.black)
                  ),
                  onPressed: () => {},
                ),
                const SizedBox(width: 100),
                TextButton.icon(
                  icon: const Icon( Icons.mode_comment_outlined,color: Colors.black, size: 14,),
                  label: const Text('2',
                      style: TextStyle(fontSize: 10,
                          color: Colors.black)
                  ),
                  onPressed: () => {},
                ),
                const SizedBox(width: 100),
                TextButton.icon(
                  icon: const Icon( Icons.file_upload_outlined,color: Colors.black, size: 14,),
                  label: const Text('Share',
                      style: TextStyle(fontSize: 10,
                          color: Colors.black)
                  ),
                  onPressed: () => {},
                ),
              ],
            )
          ],
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: DefaultTabController(
        length: 4,
        initialIndex: 0,
        child: Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            bottom:  const TabBar(
              indicatorColor: Colors.green,
              indicatorWeight: 6,

              tabs: [
                //     Tab(icon: Icon(Icons.music_note),text: "Car"),
                Tab(child: Text('Feed', style: TextStyle(color: Colors.grey,),) ),
                Tab(child: Text('My Posts', style: TextStyle(color: Colors.grey),) ),
                Tab(child: Text('Saved Posts', style: TextStyle(color: Colors.grey),) ),
                Tab(child: Text('Tags', style: TextStyle(color: Colors.grey),) ),
              ],
            ), // TabBar
            title: const Text('Forum',
              style: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.bold
              ),

            ),
            backgroundColor: Colors.grey[200],
            actions: <Widget>[
              const Icon(Icons.search,
                  size: 30,
                  color: Colors.black
              ),
              const SizedBox(
                width: 20,
              ),
              const Icon(Icons.filter_alt_outlined,
                  size: 30,
                  color: Colors.black
              ),
              const SizedBox(
                width: 20,
              ),
              Badge(
                child: const Icon(Icons.notifications_none_outlined, size: 30, color: Colors.black,), //icon style
                badgeContent: const SizedBox(
                    width: 15, height: 15, //badge size
                    child:Center(  //aligh badge content to center
                      child:Text("17", style: TextStyle(
                          color: Colors.white,  //badge font color
                          fontSize: 12 //badge font size
                      )
                      ),
                    )
                ),
                badgeColor: Colors.orange, //badge background color
              ),
              const SizedBox(
                width: 17,
              ),
            ],

          ),
          body: TabBarView(
            children: [
              Center(
                  child: Container(
                    //width: 148.0,
                    // height: 398.0,
                    padding: const EdgeInsets.all(16.0),
                    child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            buildCard1(),
                            buildCard2(),
                            buildCard1(),
                          ],
                        )
                    ),
                  )
              ),
              const Center(

                child: Text(
                  "My Post Tab",
                  style: TextStyle(fontSize: 40),
                ),
              ),

              const Center(
                  child: Text(
                    "Saved Posts",
                    style: TextStyle(fontSize: 40),
                  )),
              const Center(
                  child: Text(
                    "Tag",
                    style: TextStyle(fontSize: 40),
                  )
              ),
            ],
          ), // TabBarView
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.lightBlueAccent[700],
        unselectedItemColor: Colors.grey,

        unselectedFontSize: 13,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
            label: "Forum",
            icon: Icon(Icons.chat_bubble),
          ),
          BottomNavigationBarItem(
            label: "Private Chat",
            icon: Icon(Icons.mail),
          ),
          BottomNavigationBarItem(
            label: "Booking",
            icon: Icon(Icons.access_time),
          ),
          BottomNavigationBarItem(
            label: "Tracker",
            icon: Icon(Icons.show_chart),
          ),
          BottomNavigationBarItem(
            label: "Account",
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],

      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.edit_calendar),
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Login()));
        },

      ),

    );
  }
}

