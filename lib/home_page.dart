import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes Raro Academy"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            10,
            (index) => Card(
              child: ListTile(
                leading: Icon(
                  Icons.book,
                  color: Colors.pink,
                ),
                title: Text("Aprendendo navegaçao"),
                subtitle: Text("Hoje foi irado!"),
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation:
        FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(Icons.add),
        label: Text("Criar"),
      ),
    );
  }
}
