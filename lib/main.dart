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
                  Image.network(
                    'https://www.bing.com/images/search?view=detailV2&ccid=g6sTdGfb&id=7ECA71BBFC6966BD683A3D7E138F1704FCF09D54&thid=OIP.g6sTdGfbyN2DffeFBszqqQAAAA&mediaurl=https%3a%2f%2fvectorified.com%2fimages%2fno-profile-picture-icon-23.jpg&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.83ab137467dbc8dd837df78506cceaa9%3frik%3dVJ3w%252fAQXjxN%252bPQ%26pid%3dImgRaw%26r%3d0&exph=400&expw=400&q=profile+pictures+none&simid=608022766614169130&FORM=IRPRST&ck=C817924CAED82E33F4803DF864956F55&selectedIndex=13',
                    width: 38,
                    height: 38,
                    fit: BoxFit.cover,
                  ),
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
                  Image.network(
                    'https://www.bing.com/images/search?view=detailV2&ccid=kygngINr&id=45E20E2C294015C7D74AF2B1973D7EFABD6CB36D&thid=OIP.kygngINrt_NRKQkzVMGtNQHaG3&mediaurl=https%3a%2f%2fwebstockreview.net%2fimages%2flock-clipart-lock-icon-1.png&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.93282780836bb7f35129093354c1ad35%3frik%3dbbNsvfp%252bPZex8g%26pid%3dImgRaw%26r%3d0&exph=1924&expw=2074&q=Lock+Sign&simid=608030338661580406&FORM=IRPRST&ck=F385B2DC160EC3E7D8F9B6B0F3BA0426&selectedIndex=18',
                    width: 38,
                    height: 38,
                    fit: BoxFit.cover,
                  ),
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
