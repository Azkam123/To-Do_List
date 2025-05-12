import 'package:flutter/material.dart';
import 'package:to_do_list/utils/custom_font.dart';

class AboutScreen extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Judul Halaman', style: headingStyle,)),
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