// import 'package:flutter/material.dart';
// import 'package:ik/models/todo.dart';
// import 'package:ik/widgets/todo_item.dart';
// import 'package:ik/widgets/search_box.dart';
// import 'package:ik/constants/color.dart';
//
// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   final List<ToDo> todosList = ToDo.todoList();
//   final TextEditingController _todoController = TextEditingController();
//
//   void _addTodoItem(String todoText) {
//     setState(() {
//       todosList.add(ToDo(id: DateTime.now().toString(), todoText: todoText));
//     });
//     _todoController.clear();
//   }
//
//   void _deleteTodoItem(ToDo todo) {
//     setState(() {
//       todosList.remove(todo);
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: toBGColor,
//       appBar: AppBar(
//         title: const Text('ToDo List'),
//         backgroundColor: toBlue,
//       ),
//       body: Stack(
//         children: [
//           Container(
//             padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
//             child: Column(
//               children: [
//                 const SearchBox(),
//                 Expanded(
//        7           child: ListView.builder(
//                     itemCount: todosList.length,
//                     itemBuilder: (context, index) {
//                       return TodoItem(
//                         todo: todosList[index],
//                         onDelete: () => _deleteTodoItem(todosList[index]),
//                       );
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     margin: const EdgeInsets.only(bottom: 20, right: 20, left: 20),
//                     padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: TextField(
//                       controller: _todoController,
//                       decoration: const InputDecoration(
//                         hintText: 'Add a new ToDo Item',
//                         border: InputBorder.none,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   margin: const EdgeInsets.only(bottom: 20, right: 20),
//                   child: ElevatedButton(
//                     onPressed: () {
//                       if (_todoController.text.isNotEmpty) {
//                         _addTodoItem(_todoController.text);
//                       }
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: toBlue,
//                       minimumSize: const Size(60, 40),
//                       elevation: 10,
//                     ),
//                     child: const Text('+', style: TextStyle(fontSize: 30)),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
