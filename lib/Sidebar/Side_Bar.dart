import 'package:flutter/material.dart';
import 'package:projectuts/Screen/Inbox.dart';

class Side_Bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: Icons.inbox,
              text: 'Inbox',
              onTap: () => {
                    Navigator.pushNamed(context, '/inbox'),
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => My_Inbox())),
                  }),
          _drawerItem(
              icon: Icons.send,
              text: 'Outbox',
              onTap: () => {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => Portofolio())),
                  }),
          _drawerItem(
              icon: Icons.new_releases,
              text: 'Spam',
              onTap: () => {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => Galery())),
                  }),
          _drawerItem(
              icon: Icons.question_answer,
              text: 'Forums',
              onTap: () => {
                    // Navigator.pushNamed(context, '/contact_us'),
                  }),
          _drawerItem(
              icon: Icons.announcement,
              text: 'Promos',
              onTap: () => {
                    // Navigator.pushNamed(context, '/contact_us'),
                  }),
        ],
      ),
    );
  }

  Widget _drawerHeader() {
    return UserAccountsDrawerHeader(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      accountName: Text('Rikiansyah'),
      accountEmail: Text('rikiansyah.aris29@gmail.com'),
      currentAccountPicture: const ClipOval(
        child: Image(
          image: AssetImage('assets/images/profil.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _drawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
