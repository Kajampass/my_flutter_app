import 'package:flutter/material.dart';
import 'package:ik/constants/color.dart';
import 'package:ik/models/todo.dart';

class TodoItem extends StatelessWidget {
  final ToDo todo;
  final VoidCallback? onDelete;

  const TodoItem({Key? key, required this.todo, this.onDelete}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: ListTile(
        onTap: () {
          debugPrint('Clicked on Tap Item: ${todo.todoText}');
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: toBlue,
        ),
        title: Text(
          todo.todoText,
          style: TextStyle(
            fontSize: 16,
            color: toBlack,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: toRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: const Icon(Icons.delete),
            onPressed: onDelete,
          ),
        ),
      ),
    );
  }
}
