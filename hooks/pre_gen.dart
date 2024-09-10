import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) {
  final namePascalCase = context.vars['feature_name'].toString().pascalCase;
  final filePath = 'lib/core/navigation/constants/route_paths.dart';
  final file = File(filePath);

  if (file.existsSync()) {
    final content = file.readAsStringSync();

    final updatedContent = content.replaceFirst(
        '''//* TODO ADD NEW ROUTE - DON`T DELETE *//''',
        '''const String page$namePascalCase = '$namePascalCase';\n
//* TODO ADD NEW ROUTE - DON`T DELETE *//''');

    file.writeAsStringSync(updatedContent);
    context.logger.info('route_paths.dart has been updated.');
  } else {
    context.logger.err('route_paths.dart not found.');
  }
}
