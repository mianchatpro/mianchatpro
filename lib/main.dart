import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MianChatPro());
}

class MianChatPro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mian Chat Pro',
      theme: ThemeData(primarySwatch: Colors.purple, useMaterial3: true),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mian Chat Pro 222'), backgroundColor: Colors.purple),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.mic, size: 80, color: Colors.purple),
            SizedBox(height: 20),
            Text('Voice Rooms', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: (){},
              icon: Icon(Icons.chat),
              label: Text('Join Voice Room'),
              style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15)),
            ),
            SizedBox(height: 15),
            ElevatedButton.icon(
              onPressed: (){},
              icon: Icon(Icons.monetization_on),
              label: Text('My Coins: 1000'),
            ),
          ],
        ),
      ),
    );
  }
}
