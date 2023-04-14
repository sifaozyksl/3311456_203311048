import 'package:flutter/material.dart';
import 'package:psyogram/Home_Page.dart';

import 'package:flutter/material.dart';
import 'package:psyogram/login_page.dart';
import 'const/Colors.dart';
import 'const/Text.dart';
import 'Home_Page.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

class KayitPage extends StatefulWidget {
  KayitPage({Key? key}) : super(key: key);
  @override
  _KayitPageState createState() => _KayitPageState();
}

class _KayitPageState extends State<KayitPage> {
  final _formKey = GlobalKey<FormState>();
  late String _sifre;
  late String _email;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context)
        .size; //Bu boyut bize ekranımızın toplam yüksekliğini ve genişliğini sağlar.
    return Scaffold(
      resizeToAvoidBottomInset:
          false, // klavye açıkken boyut ayarlamayı engeller

      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [arkaplan_1, arkaplan_2]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'lib/Resimler/logo.png',
                height: 200.0,
                width: 200.0,
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'İsim-Soyisim',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Lütfen isminizi girin';
                          }

                          return null;
                        },
                        onSaved: (value) {
                          _email = value!;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'E-posta',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Lütfen E-postanizi girin';
                          }
                          if (!value.contains('@')) {
                            return 'Lütfen geçerli bir email adresi girin';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _email = value!;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Şifre',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Lütfen şifrenizi girin';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _sifre = value!;
                        },
                      ),
                      Align(
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              print('sifre: $_sifre');
                              print('Email: $_email');
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content:
                                      Text('Kaydiniz basariyla tamamlandi.'),
                                  duration: Duration(seconds: 2),
                                ),
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: button,
                          ),
                          child: Text(
                            'Kayit Ol',
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          const Text('Giris yapmak için'),
                          TextButton(
                            child: const Text(
                              'Tiklayiniz',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 252, 223, 255)),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()),
                              );
                            },
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
