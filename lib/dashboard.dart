import 'package:flutter/material.dart';
import 'package:uts/calendar.dart';
import 'package:uts/login_page.dart';
import 'package:uts/profile.dart';
import 'trapesium.dart';
import 'tabung.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Bangun Datar'),
        centerTitle: true,
      ),
      drawer: NavigationDrawer(),
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Trapesium()));
                  },
                  child: Text('Trapesium')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Tabung()));
                  },
                  child: Text('Tabung')),
            ]),
      ),
    ));
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[buildHeader(context), buildMenuItem(context)],
      ),
    );
  }
}

Widget buildHeader(BuildContext context) => Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
      ),
    );

Widget buildMenuItem(BuildContext context) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Bangun Datar'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Dashboard(),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.calendar_view_month),
            title: Text('Kalender'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Calendar(),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Profile(),
              ),
            ),
          ),
          Divider(color: Colors.black),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => LoginPage(),
              ),
            ),
          ),
        ],
      ),
    );
