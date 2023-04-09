import 'package:flutter/material.dart';
 void main(){
   runApp(const MyApp());
 }
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) :super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
   String _userInput = '';
   String _usserInput  = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Container(
              width: 150,
              height: 150,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.purple,
              ),
              child: const Center(
                child: Text(
                  'A',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Login to apparel',
              style: TextStyle(
                  fontSize: 18
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Username',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    onChanged: (value){
                      setState(() {
                        _userInput = value;
                      });
                    },
                    decoration: const InputDecoration(
                      hintText: 'Username',
                    ),
                  ),
                  const SizedBox(height: 10),
                  Icon(Icons.person),
                  const SizedBox(height: 10),
                  Text(
                    _userInput,
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    onChanged: (vvalue){
                      setState(() {
                        _usserInput = vvalue;
                      });
                    },
                    decoration: const InputDecoration(
                      hintText: 'Password',
                    ),
                  ),
                  const SizedBox(height: 10),
                  Icon(Icons.lock),
                  const SizedBox(height: 10),
                  Text(
                    _usserInput,
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Forgot Password?',
              style: TextStyle(
                  fontSize: 18
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
                onPressed: () {},
                child: const Text('Login'),
            ),
            const Spacer(),
            BottomAppBar(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.facebook),
                  Icon(Icons.search),
                  Icon(Icons.phone_iphone),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
 }
