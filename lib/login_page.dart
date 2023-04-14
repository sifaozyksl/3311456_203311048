import 'package:flutter/material.dart';
import 'const/Colors.dart';
import 'Home_Page.dart';
import 'Kayit_Page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
      body: Container(
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
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
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
                      SizedBox(height: 20.0, width: 20.0),
                      Align(
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              print('Ad: $_sifre');
                              print('Email: $_email');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()),
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: arkaplan_1,
                          ),
                          child: Text(
                            ' Giris Yap',
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          const Text('Hala kayit olmadin mi?'),
                          TextButton(
                            child: const Text(
                              'Kayit Ol',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 252, 223, 255)),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => KayitPage()),
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
