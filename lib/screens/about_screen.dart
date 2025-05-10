import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Tentang Aplikasi")),
     body: Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          "Aplikasi To-Do List Versi Flutter\n Dibuat oleh Moh Hasan Mahasiswa IT",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        
      ),
     ), 
    );
  }
} 