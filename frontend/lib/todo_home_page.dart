import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:frontend/data/todo_repository.dart';
import 'package:uuid/uuid.dart';

class TodoHomePage extends StatefulWidget {
  const TodoHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _TodoHomePageState createState() => _TodoHomePageState();
}

class _TodoHomePageState extends State<TodoHomePage> {
  final _taskTitleController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _todoRepository = TodoRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google IO Extended Turkiye'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (dialogContext) => AlertDialog(
              title: const Text('Start your planning'),
              content: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Task title',
                      ),
                      controller: _taskTitleController,
                      validator: (title) {
                        if (title?.isEmpty ?? false) {
                          return 'Team Name can not be empty!';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(dialogContext).pop();
                  },
                  child: const Text(
                    'Cancel',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      _todoRepository.addNewListItem(
                        ListItem(
                          id: Uuid().v4(),
                          title: _taskTitleController.text,
                          isChecked: false,
                        ),
                      );
                      Navigator.of(dialogContext).pop();
                    }
                  },
                  child: const Text(
                    'Add Task',
                  ),
                ),
              ],
            ),
          );
        },
        label: Text('Add Task'),
      ),
      body: StreamBuilder<List<ListItem>>(
        stream: _todoRepository.todoList,
        builder: (context, snapshot) {
          return snapshot.data?.isEmpty ?? true
              ? Center(
                  child: Text(
                    "There isn't any item yet!\nAdd some items by clicking the button below!",
                    textAlign: TextAlign.center,
                  ),
                )
              : ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (_, index) {
                    if (snapshot.data != null) {
                      return CheckboxListTile(
                        value: snapshot.data![index].isChecked,
                        onChanged: (bool? value) {},
                        title: Text(snapshot.data![index].title),
                      );
                    }
                    return SizedBox();
                  },
                );
        },
      ),
    );
  }

  @override
  void dispose() {
    _taskTitleController.clear();
    _todoRepository.dispose();
    super.dispose();
  }
}
