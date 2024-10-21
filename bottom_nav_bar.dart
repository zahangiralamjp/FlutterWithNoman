import 'package:flutter/material.dart';
import 'package:flutter_application_6/about_page.dart';
import 'package:flutter_application_6/home_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  //
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [HomePage(), AboutPage()];
    int index = 0;

    return Scaffold(
      appBar: AppBar(
        title: Text('Book App'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Image.asset('assets/images/book.png'),
            Text('Your Profile'),
            Divider(
              color: Colors.amber,
              height: 3,
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
            ),
            ListTile(
              leading: Icon(Icons.approval),
              title: Text('More App'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.limeAccent,
        unselectedItemColor: Colors.blue,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About'),
        ],
      ),
      body: pages.elementAt(index),
    );
  }
}

//BottomNavBar
/*
import 'package:flutter/material.dart';
import 'package:flutter_application_6/about_page.dart';
import 'package:flutter_application_6/home_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<Widget> pages = [
    const HomePage(),
    const AboutPage(),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Apps'),
      ),
      drawer: Drawer(
          child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Image.asset(
            'assets/images/book.png',
            height: 150,
            width: 150,
            fit: BoxFit.cover,
          ),
          Text(
            'Porm Book',
            style: TextStyle(fontSize: 30, color: Colors.green),
          ),
          Divider(
            color: Colors.green,
          ),
          SizedBox(
            height: 50,
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('About'),
          ),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text('More App'),
          ),
        ],
      )),
      body: Scaffold(
        // ignore: prefer_const_literals_to_create_immutables
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            selectedItemColor: Colors.brown,
            unselectedItemColor: Colors.grey,
            onTap: (value) {
              setState(() {
                index = value;
              });
            },
            // ignore: prefer_const_literals_to_create_immutables
            items: [
              const BottomNavigationBarItem(
                  label: "home", icon: Icon(Icons.home)),
              const BottomNavigationBarItem(
                  label: "About", icon: Icon(Icons.info)),
            ]),
        body: pages.elementAt(index),
      ),
    );
  }
}


/*
import 'package:flutter/material.dart';
import 'package:flutter_application_6/about_page.dart';
import 'package:flutter_application_6/home_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<Widget> pages = [
    HomePage(),
    AboutPage(),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BOOK APP'),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          currentIndex: 0,
          backgroundColor: Colors.grey,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.amber,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About'),
          ]),
      body: pages.elementAt(index),
    );
  }
}


*/

*/
