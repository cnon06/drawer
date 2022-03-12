import 'package:flutter/material.dart';
import 'package:untitled45/Sayfa1.dart';
import 'package:untitled45/Sayfa3.dart';

import 'Sayfa2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var sayfalar = [Sayfa1(),Sayfa2(),Sayfa3()];

  int secilenIndex =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Center(
        child: sayfalar[secilenIndex],

      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Başlık Tasarımı",style: TextStyle(fontSize: 30,color: Colors.white),),
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
            ),

            ListTile(
              title: Text("Sayfa1"),
              leading: Icon(Icons.looks_one, color: Colors.orange,),
              onTap: ()
              {
                setState(() {
                  secilenIndex=0;
                });
                Navigator.pop(context);
              },
            ),

            ListTile(
              title: Text("Sayfa2"),
              leading: Icon(Icons.looks_two, color: Colors.orange,),
              onTap: ()
              {
                setState(() {
                  secilenIndex=1;

                });
                Navigator.pop(context);
              },
            ),


            ListTile(
              title: Text("Sayfa3"),
              leading: Icon(Icons.looks_3, color: Colors.orange,),
              onTap: ()
              {
                setState(() {
                  secilenIndex=2;
                });
                Navigator.pop(context);
              },
            ),

          ],
        ),
      ),

    );
  }
}
