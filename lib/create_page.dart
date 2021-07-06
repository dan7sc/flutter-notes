import 'package:flutter/material.dart';

class CreatePage extends StatefulWidget {
  CreatePage({Key? key}) : super(key: key);

  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final formKey = GlobalKey<FormState>();
  var title;
  var subtitle;

  void validate() {
    final form = formKey.currentState;
    if (form!.validate()) {
      print("title $title \n subtitle $subtitle");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                onChanged: (value) {
                  title = value;
                },
                validator: (value) =>
                    value!.isEmpty ? "Title precisa ser preenchido" : null,
                decoration: InputDecoration(labelText: "Title"),
              ),
              TextFormField(
                onChanged: (value) {
                  subtitle = value;
                },
                validator: (value) =>
                    value!.isEmpty ? "Subtitle precisa ser preenchido" : null,
                decoration: InputDecoration(labelText: "Subtitle"),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        validate();
                      },
                      child: Text("Salvar"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
