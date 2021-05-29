import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:core/core.dart';

class TodoRepository {
  TodoRepository()
      : _todoListStream = StreamController<List<ListItem>>()..add(<ListItem>[]);

  final StreamController _todoListStream;

  Stream<List<ListItem>> get todoList =>
      _todoListStream.stream as Stream<List<ListItem>>;

  Future<void> retrieveInitialData() async {
    final body = jsonEncode(TodoRequest(
      id: '',
      title: '',
      isChecked: false,
    ).toJson());

    final res = await http.post(
      Uri.parse('http://localhost:8080'),
      headers: {'content-type': 'application/json'},
      body: body,
    );

    if (res.statusCode == HttpStatus.ok) {
      final todoResponse =
          TodoResponse.fromJson(jsonDecode(res.body) as Map<String, dynamic>);
      _todoListStream.add(todoResponse.listItems);
    } else {
      throw Exception(
          'Error: unexpected HTTP status code: ${res.statusCode.toString()}');
    }
  }

  Future<void> addNewListItem(ListItem listItem) async {
    final todoRequest = TodoRequest(
      isChecked: listItem.isChecked,
      title: listItem.title,
      id: listItem.id,
    );

    final body = jsonEncode(todoRequest.toJson());

    final res = await http.post(
      Uri.parse('http://localhost:8080'),
      headers: {'content-type': 'application/json'},
      body: body,
    );

    if (res.statusCode == HttpStatus.ok) {
      final todoResponse =
          TodoResponse.fromJson(jsonDecode(res.body) as Map<String, dynamic>);
      _todoListStream.add(todoResponse.listItems);
    } else {
      throw Exception(
          'Error: unexpected HTTP status code: ${res.statusCode.toString()}');
    }
  }

  void dispose() {
    _todoListStream.close();
  }
}
