import 'package:flutter/material.dart';
import 'package:flutter_hive/pages/todo_list_page.dart';
import 'package:flutter_hive/setupLocater.dart';
import 'package:flutter_hive/model/todo_item.dart';
import 'package:flutter_hive/services/todo_service.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Setup Hive
  await Hive.initFlutter((await getApplicationDocumentsDirectory()).path);
  Hive.registerAdapter(TodoItemAdapter());

  /// Setup DI
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final TodoService _todoService = locator<TodoService>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hive TODO List',
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: _todoService.getAllTodos(),
        builder: (context, AsyncSnapshot<List<TodoItem>> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return TodoListPage(snapshot.data ?? []);
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
