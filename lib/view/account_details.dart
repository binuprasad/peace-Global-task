import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peace_global_logistics/controller/todoList_controller.dart';

class TodoList extends StatelessWidget {
  TodoList({super.key});
  final todoController = Get.put(TodoController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.green,
              child: ListTile(
                  leading: Obx(
                    () => InkWell(
                      onTap: () {
                        todoController.buttonOntap();
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Center(
                          child: todoController.isDone.value
                              ? const Icon(
                                  Icons.close,
                                  color: Colors.red,
                                )
                              : const Icon(
                                  Icons.done,
                                  color: Colors.green,
                                ),
                        ),
                      ),
                    ),
                  ),
                  title: const Text('task number one'),
                  trailing: PopupMenuButton<int>(
                    itemBuilder: (context) => [
                      // popupmenu item 1
                      PopupMenuItem(
                        value: 1,
                        // row has two child icon and text.
                        child: TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.edit,
                              color: Colors.grey,
                            ),
                            label: Text(
                              "Update",
                              style: TextStyle(color: Colors.black),
                            )),
                      ),

                      PopupMenuItem(
                        value: 2,
                        child: TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                            label: Text(
                              "Delete",
                              style: TextStyle(color: Colors.black),
                            )),
                      ),
                    ],
                    offset: Offset(10, 30),
                    color: Colors.white,
                    elevation: 2,
                  )),
            );
          },
        ),
      ),
    );
  }
}
