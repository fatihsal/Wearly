import 'package:flutter/material.dart';
import 'package:flutterapp/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 40, right: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 48,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(48)),
                  width: 100,
                  height: 100,
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Reset Password',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Please set a new password'),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Container(
                    width: 50,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Icon(
                            Icons.mail_outline,
                            size: 24,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Container(
                            width: 1,
                            height: 35,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                  fillColor: Colors.black,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  hintText: 'Email'),
            ),
            SizedBox(
              height: 24,
            ),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Container(
                    width: 50,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Icon(
                            Icons.lock_open,
                            size: 24,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Container(
                            width: 1,
                            height: 35,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  fillColor: Colors.black,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  hintText: 'Password'),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: <Widget>[
                Switch(
                  activeColor: Color(0xffFFBE00),
                  onChanged: (i) {
                    selected = i;
                    setState(() {});
                  },
                  value: selected,
                ),
                Text('Remember me'),
              ],
            ),
            SizedBox(
              height: 75,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Container(
                width: 300,
                height: 60,
                child: Center(
                    child: Text(
                  'Log in',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                )),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xff7530ff),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
