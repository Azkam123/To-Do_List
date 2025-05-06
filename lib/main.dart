import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/about_screen.dart';
import 'theme/light_theme.dart';
import 'theme/dark_theme.dart';

void main(){
  runApp(ToDoApp());
}

class ToDoApp extends StatefulWidget{
  @override
  _ToDoAppState createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  bool _isDarkTheme = false;

  void _toggleTheme(){
    setState(() {
      _isDarkTheme = !_isDarkTheme;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To-Do App',
      theme: _isDarkTheme ? darkTheme : lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes:{
        '/': (context) => HomeScreen(toggleTheme: _toggleTheme),
        '/about': (context) => AboutScreen(),
      } ,
    );
  }
}