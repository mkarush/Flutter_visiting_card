import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text("Visting Card"),
          centerTitle: true,
          backgroundColor: Colors.lightGreen,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("images/karush.jpeg"),
              ),
              Text(
                "Karush Mahajan",
                style: TextStyle(
                  fontSize: 40,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(
                height: 20,
                width: 300,
                child: const Divider(
                  color: Colors.black,
                  thickness: 5,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.limeAccent,
                  ),
                  title: Text(
                    "karush.mahajan@gmail.com",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {
                    print("This is my email");
                  },
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.lime,
                  ),
                  title: Text(
                    "+1 (xxx)-xxx-xxxx",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {
                    print("This is my phone-no");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
