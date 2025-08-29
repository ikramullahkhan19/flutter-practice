import 'package:flutter/material.dart';
import 'package:flutterpractice/provider/todo_list_provider.dart';
import 'package:provider/provider.dart';


class TodoListWithProvider extends StatefulWidget {
  const TodoListWithProvider({super.key});

  @override
  State<TodoListWithProvider> createState() => _TodoListWithProviderState();
}

class _TodoListWithProviderState extends State<TodoListWithProvider> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final todoProvider=Provider.of<TodoListProvider>(context);
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
                      todoProvider.addTask(_controller.text);
                      _controller.clear();


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
                itemCount: todoProvider.tasks.length,

                itemBuilder: (context, index) {
                  return ListTile(
                    title: Card(
                      color: Colors.white12,

                      child: Center(
                        child: Text(
                          todoProvider.tasks[index],

                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        final deletedTask=todoProvider.tasks[index];
                        todoProvider.removeTask(deletedTask);

                        ScaffoldMessenger.of(context).hideCurrentSnackBar();


                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('task deleted'),
                              action: SnackBarAction(label: 'undo'
                                  ,

                                  onPressed: (){
                                   todoProvider.undoTask();

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
