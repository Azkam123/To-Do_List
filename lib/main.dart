import 'package:flutter/material.dart';

void main() {
    runApp(ToDoApp());
}

class ToDoApp extends StatelessWidget {
    @override
    Widget build(BuildContext context){ 
        return MaterialApp(
            title: 'To-Do List',
            debugShowCheckedModeBanner: false,
        );
    }
}

class ToDoListScreen extends StatelessWidget{
    @override
    _ToDoListScreenState createState() => _ToDoListScreenState();
}

class _ToDoListScreenState extends State<ToDoListScreen> {
    final List<String> _tasks = [];
    final TextEditingController _controller =TextEditingController();

    void _addTask(){
        if (_controller.text.isNotEmpty) {
            setState((){
                _tasks.add(_controller.text);
                _controller.clear();

            });
            }
        }

        void _removeTask(int index){~
            setState((){
                _tasks.removeAt(index);
            });
        }

        @override
        Widget build(BuildContext context) {
            return Scaffold(
                appBar: AppBar(
                    title: Text('To-Do List'),
                    backgroundColor: Colors.deepPurple,
                ),
                body: Column(
                    children: [
                        Padding(
                            Padding: EdgeInsets.all(12),
                            child: Row(
                                children:[
                                    Expanded(
                                        child: TextField(
                                            controller: _controller,
                                            decoration: InputDecoration(
                                                hintText: 'Tambah tugas...',
                                                border: OutlineInputBorder(),
                                            ),
                                        ),
                                    ),
                                    SizedBox(widget: 10),
                                    ElevatedButton(
                                        onPressed: _addTask,
                                        child: Text('Tambah'),
                                    ),

                                ],
                            ),
                        ),
                        Expanded(
                            child: ListView.builder(
                                itemCount: _tasks.length,
                                itemBuilder: (context, index){
                                    return Card(
                                        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                        child: ListTile(
                                            title: Text(_tasks[index]),
                                            trailing: IconButton(
                                                icon: Icon(Icons.delete, color: Colors.red),
                                                onPressed: () => _removeTask(index),
                                            ),
                                        ),
                                    );
                                },
                            ),
                        ),
                    ],
                ),
            );
        }

}