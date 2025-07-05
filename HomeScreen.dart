import 'package:education_hub/profilepage.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  static const IconData school = IconData(0xe559, fontFamily: 'MaterialIcons');
  static const IconData mic = IconData(0xe3e1, fontFamily: 'MaterialIcons');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Education HUB",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("App Navigation", style: TextStyle(fontSize: 40)),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),

              onTap: () {
                Navigator.pop(context, "You are on  the home page");
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text("About"),
              onTap: () {
                Navigator.pop(context, "You are on the about page");
              },
            ),
            ListTile(
              leading: const Icon(Icons.contacts),
              title: const Text("Contacts"),
              onTap: () {
                Navigator.pop(context, "You are on the contacts page");
              },
            ),
          ],
        ),
      ),

      body: Column(
        children: [
          const SizedBox(height: 40),
          ListTile(
            leading: GestureDetector(
              onTap: ()=>Navigator.push(context,MaterialPageRoute(builder:((context)=>ProfilePage()))),
              child: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  "b",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 247, 245, 245),
                  ),
                ),
                
                
              ),
            ),
            title: Text(
              "NAMTSE, bijaya!",
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              
            ),
            
            subtitle: Text(
              "WELCOME TO EDUCATION HUB",
              style: TextStyle(
                color: const Color.fromARGB(179, 0, 0, 0),
                fontSize: 16,
              ),
            ),
          ),

          const SizedBox(height: 10),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "OPTION",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(16),
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              children: const [
                ActionButton(
                  title: "Notes",
                  subtitle: "Notes/Solution of all Subject",
                  colors: Colors.red,
                  logo: Icons.book,
                  route: '/report',
                ),
                ActionButton(
                  title: "Syllbus",
                  subtitle: "Syullbus for all department",
                  colors: Colors.blue,
                  logo: Icons.school,
                  route: '/scan',
                ),
                ActionButton(
                  title: "old question",
                  subtitle: "",
                  colors: Colors.purple,
                  logo: Icons.assignment,
                  route: '/map',
                ),
                ActionButton(
                  title: "Notice",
                  subtitle: "",
                  colors: Colors.orange,
                  logo: Icons.mic,
                  route: '/leaderboard',
                ),
              ],
            ),
          ),
        ],
      ),
      
    );
  }
}

class ActionButton extends StatelessWidget {
  final dynamic colors;
  final dynamic title;
  final dynamic subtitle;
  final dynamic logo;
  final dynamic route;

  const ActionButton({
    super.key,
    required this.colors,
    required this.title,
    required this.subtitle,
    required this.logo,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, route); // or other routes
        },
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: colors,
                child: Icon(logo, color: Colors.white),
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              if (subtitle.isNotEmpty)
                Text(
                  subtitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 10, color: Colors.grey),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
