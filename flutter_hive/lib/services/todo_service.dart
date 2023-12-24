import 'package:flutter_hive/model/todo_item.dart';
import 'package:hive/hive.dart';

class TodoService {
  final String _boxName = "todoBox";

  Future<Box<TodoItem>> get _box async =>
      await Hive.openBox<TodoItem>(_boxName);

  Future<void> addTodo(TodoItem item) async {
    var box = await _box;
    await box.add(item);
  }

  Future<List<TodoItem>> getAllTodos() async {
    var box = await _box;
    return box.values.toList();
  }

  Future<void> editTodo(int index, TodoItem item) async {
    var box = await _box;
    await box.putAt(index, item);
  }

  Future<void> deleteTodo(int index) async {
    var box = await _box;
    await box.deleteAt(index);
  }

  Future<void> toggleCompleted(int index, TodoItem item) async {
    var box = await _box;
    item.isCompleted = !item.isCompleted;
    await box.putAt(index, item);
  }
}
