import 'package:functions_framework/functions_framework.dart';
import 'package:core/core.dart';

// Export api_types so builder can use them when generating `bin/server.dart`.
export 'package:core/core.dart';

@CloudFunction()
TodoResponse function(TodoRequest request, RequestContext context) {
  listItems.add(
    ListItem(
      id: request.id,
      title: request.title,
      isChecked: request.isChecked,
    ),
  );
  final response = TodoResponse(
    listItems: listItems,
  );
  context.logger.info('todoResponse: ${response.toJson()}');
  return response;
}

final listItems = <ListItem>[];
