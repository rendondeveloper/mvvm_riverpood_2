import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:identaplusschool/features/{{feature_name.snakeCase()}}/data/data_export.dart'
    show {{feature_name.pascalCase()}}Repository;
import 'package:identaplusschool/features/{{feature_name.snakeCase()}}/domain/domain_export.dart' 
show {{feature_name.pascalCase()}}State;

class {{feature_name.pascalCase()}}Provider extends StateNotifier<{{feature_name.pascalCase()}}State> {
  final {{feature_name.pascalCase()}}Repository _repository;
  {{feature_name.pascalCase()}}Provider({required {{feature_name.pascalCase()}}Repository repository}) : 
  _repository = repository,
  super(const {{feature_name.pascalCase()}}State());
}
