import 'package:flutter/material.dart';

class Myclass extends StatefulWidget {
  const Myclass({Key? key}) : super(key: key);

  @override
  State<Myclass> createState() => _MyclassState();
}

class _MyclassState extends State<Myclass> {
  TextEditingController txtname = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: txtname,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Name"),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("NEXT"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Productmodel {
  String? name;

  Productmodel({this.name});
}
