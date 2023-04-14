import 'package:flutter/material.dart';
import 'package:psyogram/const/myDrawer.dart';
import 'package:psyogram/const/colors.dart';

void main() => runApp(HakkimdaSayfasi());

class HakkimdaSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PSYOGRAM',
      home: Scaffold(
        drawer: myDrawer(),
        appBar: AppBar(
          title: Text("Psyogram"),
          backgroundColor: arkaplan_1,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('lib/Resimler/logo.png'),
                radius: 50.0,
              ),
              SizedBox(height: 20.0),
              Text(
                'Ad Soyad',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Psikoloji öğrencileri ve psikolojiye ilgisi olan insanlarin psyogram a girip hem tartişilacak bir konu açabileceği hem de paylaşilan konulara kendi düşüncelerini yorum olarak paylaşabilecekleri bir uygulama ortamidir. ',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
