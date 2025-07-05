import 'package:educationhub/home.dart';
import 'package:flutter/material.dart';

class PastQuestion extends StatefulWidget {
  const PastQuestion({super.key});

  @override
  State<PastQuestion> createState() => _PastQuestionState();
}

class _PastQuestionState extends State<PastQuestion> {
  List<String>year = ['First','Second','Third','Fourth'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Old Questions"),
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context , int index){
          return Card(
            child: ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) => HomePage())));
              },
              title: Text("${year[index]} Year"),
              trailing: Icon(Icons.arrow_right),
            ),
          );
        }
      )
    );
  }
}