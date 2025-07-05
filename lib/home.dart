import 'package:flutter/material.dart';
import 'test.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String>semester =['Ist Part','IInd Pard'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Old Questions"),
      ),
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) => Test())));
              },
              title: Text(semester[index]),
              trailing: Icon(Icons.arrow_right),
            ),
          );
        }
          
        
      ),
    );
  }
}