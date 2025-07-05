import 'package:educationhub/question.dart';
import 'package:flutter/material.dart';

class Faculty extends StatefulWidget {
  const Faculty({super.key});

  @override
  State<Faculty> createState() => _FacultyState();
}

class _FacultyState extends State<Faculty> {
  List<String> faculty = ["Civil Engineering","Electronics Engineering","Computer Engineering","Architecture Engineering","Electrical Engineering","Mechanical Engineering","Chemical Engineering","Agriculture Engineering","Aerospace Engineering","Industry Engineering"];
  @override
  Widget build(BuildContext context) {
        return Scaffold(
      appBar: AppBar(
        title: Text("Old Questions"),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context , int index){
          return Card(
            child: ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) => PastQuestion())));
              },
              title: Text(faculty[index]),
              trailing: Icon(Icons.arrow_right),
            ),
          );
        }
      )
    );
  }
}