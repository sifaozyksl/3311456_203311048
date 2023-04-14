import 'package:flutter/material.dart';
import 'package:psyogram/const/arka_plan.dart';

void main() {
  runApp(const CardExamplesApp());
}

class CardExamplesApp extends StatelessWidget {
  const CardExamplesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorSchemeSeed: Color.fromARGB(255, 51, 5, 136), useMaterial3: true),
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Positioned.fill(
              child: ArkaPlan(),
            ),
            Expanded(
              child: Center(
                child: ListView(
                  shrinkWrap:
                      true, // ListView içeriğinin boyutunu en aza indirir
                  children: [
                    PsikolojiInsanlariExample(),
                    EkollerExample(),
                    HastaliklarExample(),
                    DeneylerExample(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//PsikolojiInsanlariExample(),
//           EkollerExample(),
//         HastaliklarExample(),
//       DeneylerExample(),

class PsikolojiInsanlariExample extends StatelessWidget {
  const PsikolojiInsanlariExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ArkaPlan()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0),
              side: BorderSide(color: Colors.red)),
          elevation: 0,
          color: Theme.of(context).colorScheme.surfaceVariant,
          child: const SizedBox(
            width: 300,
            height: 100,
            child: Center(child: Text('Psikolojiye Yon Veren Insanlar')),
          ),
        ),
      ),
    );
  }
}

class EkollerExample extends StatelessWidget {
  const EkollerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ArkaPlan()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0),
              side: BorderSide(color: Colors.red)),
          elevation: 0,
          color: Theme.of(context).colorScheme.surfaceVariant,
          child: const SizedBox(
            width: 300,
            height: 100,
            child: Center(child: Text('Ekoller')),
          ),
        ),
      ),
    );
  }
}

class DeneylerExample extends StatelessWidget {
  const DeneylerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ArkaPlan()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0),
              side: BorderSide(color: Colors.red)),
          elevation: 0,
          color: Theme.of(context).colorScheme.surfaceVariant,
          child: const SizedBox(
            width: 300,
            height: 100,
            child: Center(child: Text('Psikolojik Deneyler')),
          ),
        ),
      ),
    );
  }
}

class HastaliklarExample extends StatelessWidget {
  const HastaliklarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ArkaPlan()),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0),
              side: BorderSide(color: Colors.red)),
          elevation: 0,
          color: Theme.of(context).colorScheme.surfaceVariant,
          child: const SizedBox(
            width: 300,
            height: 100,
            child: Center(child: Text('Psikolojik Hastaliklar')),
          ),
        ),
      ),
    );
  }
}
