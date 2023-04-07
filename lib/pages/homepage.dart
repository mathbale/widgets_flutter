import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:widgets_flutter/pages/services/gerar_numero.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

var num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Widgets"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Text(num.toString())
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            num = GerarNum.gerarNum(10);
          });
        },
        child: const Icon(Icons.add, size: 32),
        ),
    );
  }
}