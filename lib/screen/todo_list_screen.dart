import 'package:flutter/material.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  final TextEditingController _controller = TextEditingController();
  List<String> tasks = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo_List'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: 'Add a Task',
                    ),

                    controller: _controller,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      tasks.add(_controller.text);
                      _controller.clear();
                      setState(() {});
                    },
                    child: Icon(Icons.add, color: Colors.blue),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
                child: Text('Tasks',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
            Divider(),


            Expanded(
              child: ListView.builder(
                itemCount: tasks.length,

                itemBuilder: (context, index) {
                  return ListTile(
                    title: Card(
                      color: Colors.white12,

                      child: Center(
                        child: Text(
                          tasks[index],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        
                        String deletedTask=tasks[index];
                        tasks.removeAt(index);
                        setState(() {});
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();


                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('task deleted'),
                              action: SnackBarAction(label: 'undo'
                                  ,

                                  onPressed: (){
                                setState(() {
                                  tasks.add( deletedTask);
                                });
                              }),
                            ));
                      },
                      icon: Icon(Icons.delete, color: Colors.red),
                    ),
                  );
                },
              ),
            ),



          ],
        ),
      ),

    );
  }
}
