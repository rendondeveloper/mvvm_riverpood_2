import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) async {
  context.logger.info('EXECUTE.');
  final namePascalCase = context.vars['feature_name'].toString().pascalCase;
  context.logger.info('EXECUTE - GET VARIABLE.');
  final filePath = 'lib/core/navigation/constants/route_paths.dart';
  context.logger.info('EXECUTE - SET PATH.');
  final file = File(filePath);
  context.logger.info('EXECUTE - CREATE PATH.');

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
