import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "myTube App",
      home: HomeScreen(),
    );
  }
}
var Array =
[
  {
    "img": "https://images.genius.com/9b8b396b81a61f0e69659a396d75830b.640x640x1.jpg",
    "channel": "TechExplorers",
    "subtitle": "Latest Tech Reviews"
  },
  {
    "img": "https://images.genius.com/9b8b396b81a61f0e69659a396d75830b.640x640x1.jpg",
    "channel": "TechExplorers",
    "subtitle": "Latest Tech Reviews"
  },
  {
    "img": "https://images.genius.com/9b8b396b81a61f0e69659a396d75830b.640x640x1.jpg",
    "channel": "TechExplorers",
    "subtitle": "Latest Tech Reviews"
  },
  {
    "img": "https://images.genius.com/9b8b396b81a61f0e69659a396d75830b.640x640x1.jpg",
    "channel": "TechExplorers",
    "subtitle": "Latest Tech Reviews"
  },
  {
    "img": "https://images.genius.com/9b8b396b81a61f0e69659a396d75830b.640x640x1.jpg",
    "channel": "TechExplorers",
    "subtitle": "Latest Tech Reviews"
  },
  {
    "img": "https://images.genius.com/9b8b396b81a61f0e69659a396d75830b.640x640x1.jpg",
    "channel": "TechExplorers",
    "subtitle": "Latest Tech Reviews"
  },
  {
    "img": "https://images.genius.com/9b8b396b81a61f0e69659a396d75830b.640x640x1.jpg",
    "channel": "TechExplorers",
    "subtitle": "Latest Tech Reviews"
  },
  {
    "img": "https://images.genius.com/9b8b396b81a61f0e69659a396d75830b.640x640x1.jpg",
    "channel": "TechExplorers",
    "subtitle": "Latest Tech Reviews"
  },
  {
    "img": "https://images.genius.com/9b8b396b81a61f0e69659a396d75830b.640x640x1.jpg",
    "channel": "TechExplorers",
    "subtitle": "Latest Tech Reviews"
  },
  {
    "img": "https://images.genius.com/9b8b396b81a61f0e69659a396d75830b.640x640x1.jpg",
    "channel": "TechExplorers",
    "subtitle": "Latest Tech Reviews"
  },

];



class HomeScreen extends StatelessWidget {
  mySnackbar(context,msg){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("MyTube App"),backgroundColor: Colors.red,titleSpacing: 1,



          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.comment)),
            IconButton(onPressed: (){}, icon: Icon(Icons.notification_add)),
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){}, icon: Icon(Icons.login)),
          ],


        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.subscript),label: "subscript"),
            BottomNavigationBarItem(icon: Icon(Icons.add),label: "add"),


          ],
        ),
        body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),itemCount: Array.length,
          itemBuilder: (context,index){
            return InkWell(
              onTap: (){},
              child: Card(elevation: 2.0,child: Column(children: [Expanded(child: Image.network(Array[index]["img"]!)
              ),
                Padding(padding: EdgeInsets.all(4.0),child: Text(Array[index]["channel"]!),),
                Padding(padding: EdgeInsets.all(4.0),child: Text(Array[index]["subtitle"]!),)


              ],
              ),),
            );
          },)

    );
  }
}