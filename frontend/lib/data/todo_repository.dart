import 'dart:async';

import 'package:core/core.dart';

class TodoRepository {
  TodoRepository()
      : _todoListStream = StreamController<List<ListItem>>()..add(<ListItem>[]);

  final StreamController _todoListStream;

  Stream<List<ListItem>> get todoList =>
      _todoListStream.stream as Stream<List<ListItem>>;

  Future<void> addNewListItem(ListItem listItem) async {
    final currentList = <ListItem>[];
    currentList.add(listItem);
    _todoListStream.add(currentList);
  }

  void dispose() {
    _todoListStream.close();
  }
}
