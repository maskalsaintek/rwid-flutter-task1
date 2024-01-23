import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material A[[]]',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Material App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  final _contact = [
    ["Leanne Graham", "1-770-736-8031 x56442", "L"], 
    ["Erwin hovell", "010-692-6593 x0925", "E"],
    ["Clementine Bauch", "1-463-123-4447", "C"],
    ["Patricia Lebsack", "493-170-9623mx156", "P"],
    ["Chelsey Dietrich", "(254)954-1289", "C"],
    ["Mrs. Dennis Schulist", "1-477-935-8478 x6430", "M"],
    ["Kurtis Weisnatt", "210.067.6132", "K"]
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: _contact.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Material App'),
            backgroundColor: Colors.black87,
            foregroundColor: Colors.white,
          ),
          bottomNavigationBar: Container(
            color: Colors.black,
            child: const TabBar(
              labelColor: Colors.green,
              unselectedLabelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsets.all(5.0),
              indicatorColor: Colors.transparent,
              tabs: [
                Tab(
                  text: "Home",
                  icon: Icon(Icons.home),
                ),
                Tab(
                  text: "Setting",
                  icon: Icon(Icons.settings),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView.builder(
                itemCount: _contact.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      title: Text(_contact[index][0], style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text(_contact[index][1]),
                      leading: CircleAvatar(
                        backgroundColor: Colors.green,
                        child: Text(_contact[index][2], style: TextStyle(color: Colors.white))
                      )
                    );
              }),
              Icon(Icons.settings),
            ],
          ),
          drawer: Drawer(
            child: SizedBox.shrink()),
        ),
      ),
    );
  }
}
