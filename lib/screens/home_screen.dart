import 'package:flutter/material.dart';
import 'package:to_do_list/utils/custom_font.dart';

class HomeScreen extends StatefulWidget{
  final VoidCallback toggleTheme;

  HomeScreen({required this.toggleTheme});

  @override

  
_HomeScreenState createState () => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _tasks = [];
  final TextEditingController _controller = TextEditingController();

  void _addTask(){
    if (_controller.text.isNotEmpty){
      setState(() {
       _tasks.add(_controller.text);
       _controller.clear(); 
      });
    }
  }
   
   void _removeTask(int index){
    setState(() {
      _tasks.removeAt(index);
    });
   }

   @override
   Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('To-Do List', style: headingStyle,),
        actions: [
          IconButton(
            icon: Icon(Icons.brightness_6),
            onPressed: widget.toggleTheme,
            ),
            IconButton(
               icon: Icon(Icons.info_outline),
               onPressed: () => Navigator. pushNamed(context, '/about'),
               )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Tambah tugas...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed:_addTask, 
                  child: Text('tambah'),
                  
                ),


              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _tasks.length,
                itemBuilder: (context, index){
                  return Card(
                    child: ListTile(
                      title: Text(_tasks[index]),
                      trailing: IconButton(
                        icon:Icon(Icons.delete),
                        onPressed: () => _removeTask(index),
                      ),
                    ),
                  );
                }
              ),
             
            ),
          ],
        ),
      ),
    );
  }
}