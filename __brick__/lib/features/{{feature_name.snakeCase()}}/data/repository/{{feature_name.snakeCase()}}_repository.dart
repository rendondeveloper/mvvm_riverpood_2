import 'package:identaplusschool/features/{{feature_name.snakeCase()}}/data/data_export.dart' show {{feature_name.pascalCase()}}DataSource;

class {{feature_name.pascalCase()}}Repository {

  final {{feature_name.pascalCase()}}DataSource _dataSource;

  {{feature_name.pascalCase()}}Repository({required {{feature_name.pascalCase()}}DataSource dataSource})
   : _dataSource = dataSource;

}
