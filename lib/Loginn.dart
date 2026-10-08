import 'package:flutter/material.dart';

class Masuk extends StatefulWidget{
  const Masuk({super.key});

  @override
  State<Masuk> createState() => _MasukPageState();
}

class _MasukPageState extends State<Masuk> {
  TextEditingController masukkanNISemail = new TextEditingController();
  TextEditingController kataSandi = new TextEditingController();
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Raporku"),
        backgroundColor : Color(0xFFFFFFFFF),
      ),
      backgroundColor: Color(0xFFFFFFFFF),
      body: Column(
        children: [
          Center(
            child: Container(
              width: 300,
              color: Color (0xFFF6F8FB),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'NIS/Email',
                  border: OutlineInputBorder(),
                ),
                
                controller: masukkanNISemail,
                onSubmitted: (values) {
                  masukkanNISemail.text = values;
                },
            
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            ),
      
          ElevatedButton(
            child: Text("Masuk"),
            onPressed: () {
              print(masukkanNISemail);
            },
          ),
        ],
        ),
    );
    
  }
    
}