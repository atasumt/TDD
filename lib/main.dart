import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// Programcı testlerinin, tasarıma başlarken yazılması tasarımı kolaylaştırır.
// Projedeki iş mantığı, koda tam olarak yansır.
// Çerçevenin dışına çıkma söz konusu olduğunda kimse kızmazsa, birim testi kızacaktır.
// Sonradan ortaya çıkacak bug’lar, olumlu birim testleri sayesinde önceden farkedilir. Bu da her tür zarardan erken dönmek demektir.
// TDD’nin hakim olduğu bir projede refactoring’den korkulmaz.

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}