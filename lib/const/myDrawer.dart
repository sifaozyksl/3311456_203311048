import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:psyogram/const/arka_plan.dart';
import 'package:psyogram/const/colors.dart';
import 'package:psyogram/Home_Page.dart';
import 'package:psyogram/login_page.dart';
import 'package:psyogram/Hakkımda.dart';

class myDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _myDrawerState();
}

class _myDrawerState extends State {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Align(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 8.0),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.asset(
                      "lib/Resimler/logo.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    "PSYOGRAM",
                    style: TextStyle(color: primaryColor, fontSize: 25.0),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          //anasayfa
          ListTile(
            leading: Icon(Icons.home),
            title: Text('AnaSayfa'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          //ayarlar
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Hesap Ayarlari'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          //hakımda
          ListTile(
            leading: Icon(Icons.info),
            title: Text('Hakkimda'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HakkimdaSayfasi()),
              );
            },
          ),
          //çikişyap
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Çikiş Yap'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
