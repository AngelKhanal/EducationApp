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

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Text("Welcome"),
    );
  }
}